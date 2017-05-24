from flask import render_template, redirect, url_for, flash, request
from flask_login import login_required, current_user
from . import main
from ..database_model import *
import datetime
import uuid
from .objects import AddObjectForm
from ..models import *
from ..auth.forms import *


@main.route('/', methods=['GET'])
def index():
    return redirect(url_for('main.management'))


# 目标管理-第一页
@main.route('/management', methods=['GET', 'POST'])
@login_required
def management():
    # mainpoint in page
    page = request.args.get('page', 1, type=int)
    pagination = aop_system.query.order_by(aop_system.score).paginate(
        page, per_page=current_app.config['FLASKY_POSTS_PER_PAGE'],
        error_out=False)
    posts = pagination.items
    # left navigation list
    system_list, object_list, model_list = left_nav()
    return render_template('management.html', posts=posts,
                           system_list=system_list, object_list=object_list, model_list=model_list,
                           pagination=pagination)


# 目标管理-第二页
@main.route('/management/<sys_id>', methods=['GET', 'POST'])
@login_required
def management_2(sys_id):
    sysname = request.args.get('sysname', type=str)
    # sysname是为了传递第一层名称,不能写在def的括号中。因为是请求
    page = request.args.get('page', 1, type=int)
    pagination = aop_object_score.query.filter_by(sys_id=sys_id).order_by(aop_object_score.score).paginate(
        page, per_page=current_app.config['FLASKY_POSTS_PER_PAGE'],
        error_out=False)
    posts = pagination.items
    # 获取table_name，传递给图表
    system_list, object_list, model_list = left_nav()
    return render_template('management_2.html', posts=posts, sys_id=sys_id,
                           system_list=system_list, object_list=object_list, model_list=model_list,
                           sysname=sysname, pagination=pagination)


# 目标管理-第三页
@main.route('/management/<sys_id>/<object_id>', methods=['GET', 'POST'])
@login_required
def management_3(sys_id, object_id):
    sysname = request.args.get('sysname')
    instance_name = request.args.get('instance_name')
    # instance是因为需要满足传递第二层名称
    page = request.args.get('page', 1, type=int)
    pagination = aop_model_score.query.filter_by(
        sys_id=sys_id, object_id=object_id).order_by(
        aop_model_score.score).paginate(
        page, per_page=current_app.config['FLASKY_POSTS_PER_PAGE'],
        error_out=False)
    posts = pagination.items
    system_list, object_list, model_list = left_nav()
    return render_template('management_3.html', posts=posts, sys_id=sys_id, object_id=object_id,
                           system_list=system_list, object_list=object_list, model_list=model_list,
                           sysname=sysname, instance_name=instance_name, pagination=pagination)


# @main.route('/目标管理')

# 目标管理-性能图表
@main.route('/model/<table_name>', methods=['GET', 'POST'])
@login_required
def charts(table_name):
    # 本方法调用paint_table.进行数值查询。取出目标表字段end_time以及score
    sys_id = request.args.get('sys_id')
    object_id = request.args.get('object_id')
    sysname = request.args.get('sysname')
    instance_name = request.args.get('instance_name')
    stop_paint = False
    # 表格名称
    if str.isdigit(table_name):
        chart_name = aop_model_score.query.filter_by(model_id=table_name).first().model_name + '详情'
    else:
        chart_name = aop_model_score.query.filter_by(table_name=table_name).first().model_name
    # 异常判断
    if str.isdigit(table_name):
        table_name = int(table_name)
        try:
            chart_list = aop_model_score.query.filter(aop_model_score.model_id > table_name,
                                                      aop_model_score.model_id < (table_name + 100),
                                                      aop_model_score.sys_id == sys_id,
                                                      aop_model_score.object_id == object_id).all()
        except Exception as e:
            print(e)
            stop_paint = True
            flash("查询错误。表不存在或异常")
            return redirect(url_for('.none_value', value="查询错误。请检查aop_model_score表"))
        list_table = []
        # 初始化存放表单名称的列表
        dic_table = {}
        # 初始化数据字典
        for i in chart_list:
            list_table.append(i.table_name)
            dic_table[i.table_name] = paint_table(i.table_name, sys_id, object_id)
    else:
        list_table = [table_name]
        # 初始化存放表单名称的列表;此处仅存放一个数值。为了保持list_table的类型一致。采用列表形式
        dic_table = {}
        # 初始化数据字典
        dic_table[table_name] = paint_table(table_name, sys_id, object_id)

    # 语法校验,检查表格长度
    for list_tests in list_table:
        try:
            test_num1 = dic_table[list_tests]['end_time']
            test_num2 = dic_table[list_tests]['score1']
            if len(test_num1) < 1 or len(test_num2) < 1:
                stop_paint = True
        except Exception as e:
            return redirect(url_for('.none_value', value="查询错误。请检查表内容是否为空"))

    if stop_paint is True:
        flash("查询错误。停止生成表。请检查数据库中是否存在该表或表中是否有数据")
        return redirect(url_for('.none_value',
                                value="查询错误。停止生成表。请检查数据库中是否存在该表或表中是否有数据"))

    system_list, object_list, model_list = left_nav()
    return render_template('charts.html', sys_id=sys_id, object_id=object_id, table_name=table_name,
                           sysname=sysname, instance_name=instance_name, chart_name=chart_name,
                           system_list=system_list, object_list=object_list, model_list=model_list,
                           dic_table=dic_table, list_table=list_table)


@login_required
def paint_table(table_name, sys_id, object_id):
    post_name = sys_id + '_' + table_name
    print(post_name)
    adict = globals()
    end_time = []
    score1 = []
    # 查询表的中文名，取消原先的精度。只取第一个的内容
    table_cn_name = aop_model_score.query.filter_by(table_name=table_name).first().model_name
    # score2 = []
    # 根据Inst_id进行分类。默认设定Inst_id仅有一种情况
    post1 = adict['%s' % post_name].query.all()
    # post2 = adict['%s' % table_name].query.filter_by(inst_id=2).all()
    for i in post1:
        end_time.append(datetime.datetime.strftime(i.end_time, '%y-%m-%d %H:%M:%S'))
        score1.append(i.score)
    # for j in post2:
    #     score2.append(j.score)
    dict_values = {'end_time': end_time, 'score1': score1, 'table_cn_name': table_cn_name}
    return dict_values


@main.route('/<value>', methods=['GET', 'POST'])
def none_value(value):
    return render_template('None.html', value=value)


def left_nav():
    system_list = aop_system.query.all()
    object_list = aop_object_score.query.all()
    model_list = aop_model_score.query.all()
    return system_list, object_list, model_list


# 添加目标
@main.route('/addmanage', methods=['GET', 'POST'])
@login_required
def add_manage():
    form = AddObjectForm()
    if form.validate_on_submit():
        sys_name = aop_system.query.filter_by(sysname=form.sys_name.data).first()
        sys_uuid = uuid.uuid3(uuid.NAMESPACE_DNS, form.sys_name.data)
        if sys_name is None:
            new_system = aop_system(
                sys_id=form.sys_id.data,
                sysname=form.sys_name.data,
                status=0,
                score=0
            )
            db.session.add(new_system)

        object = aop_object_score.query.filter_by(sys_id=sys_uuid.hex, object_id=form.ip.data,
                                                  object_type=form.type.data).first()
        if object is None:
            new_object = aop_object_score(
                sys_id=form.sys_id.data,
                object_id=form.ip.data,
                object_name=form.object_name.data,
                object_type=form.type.data,
                instance_name=form.dbname.data,
                username=form.usename.data,
                password=form.passwd.data
            )
            db.session.add(new_object)

            # 依据模板循环添加aop_model_score 记录
            model_temp_list = aop_model_score.query.filter_by(object_type=form.type.data)
            for model_temp in model_temp_list:
                new_model = aop_model_score(
                    sys_id=form.sys_id.data,
                    object_id=form.ip.data,
                    object_type=form.type.data,
                    model_id=model_temp.model_id,
                    model_name=model_temp.model_name,
                    table_name=model_temp.table_name,
                    score=0
                )
                db.session.add(new_model)

            db.session.commit()
            flash('对象添加成功！')
        else:
            flash('对象名称已经存在！')

    system_list, object_list, model_list = left_nav()
    return render_template('add_object.html', system_list=system_list, object_list=object_list, model_list=model_list,
                           form=form)


@main.route('/test', methods=['GET', 'POST'])
def test():
    return render_template('death.html')


# 告警管理
@main.route('/report', methods=['GET', 'POST'])
def report():
    # datetime相关的类结构参考
    # https://docs.python.org/3/library/datetime.html
    # class datetime.timedelta(days=0, seconds=0, microseconds=0, milliseconds=0, minutes=0, hours=0, weeks=0)
    # 时间字符串主要参数： %Y %m %d %H %M %S %f  年 月 日 时 分 秒 微秒 %W 周
    # 四小时遗留告警数据采集
    # 获取当前时间--datetime格式
    current_time = datetime.datetime.now()
    # 取得比较值--四小时前的datetime值
    stay_time = current_time - datetime.timedelta(hours=4)
    # 查询状态为PROBLEM的数据
    four_hour_stay = zabbix_warning.query.filter(zabbix_warning.time > stay_time,
                                                 zabbix_warning.status == 'PROBLEM').all()

    # 最近七天告警趋势
    # 获取当前时间--datetime格式
    current_time = datetime.datetime.now()
    # 计算查询天数范围
    day_range = 7
    search_range = current_time - datetime.timedelta(days=day_range)
    # 查询时间范围内的所有数据
    bar_data = zabbix_warning.query.filter(zabbix_warning.time > search_range,
                                           zabbix_warning.time < current_time).all()
    # 与前端保持一致需要用到的列表初始化/命名风格与前端保持一致
    x_axis_data = []
    # data_ok = []
    # data_pb = []

    # 求取柱状图横坐标(时间)
    for i in range(day_range * 24):
        # 字符串格式的搜索开始时间
        current_hour_range = (
        datetime.datetime.strftime((search_range + datetime.timedelta(hours=i + 1)), "%Y-%m-%d %H:00:00"))
        # 向柱状图X轴列表写入信息
        x_axis_data.append(current_hour_range)

        # 初始化判断条件及累加器
        # judge = current_time.hour+1
    x_axis_data_first = datetime.datetime.strptime(x_axis_data[0], "%Y-%m-%d %H:%M:%S")
    intital_value = 0
    intital_length = len(x_axis_data)
    data_ok = [intital_value] * intital_length
    data_pb = [intital_value] * intital_length

    # 遍历所有数据，求取柱状图数据
    # 此处不能用小时数遍历。因为无法保证sqlalchemy的order_by对于datetime格式的数据有效
    for j in bar_data:
        # 获取时间差(小时),转换成int时，会自动保留整数位
        time_number = int((j.time - x_axis_data_first).total_seconds() / 3600)
        if j.status == 'OK':
            data_ok[time_number] = data_ok[time_number] + 1
        else:
            data_pb[time_number] = data_pb[time_number] + 1

            # 插件筛选范围的区间
    maxNum = max(data_ok + data_pb)

    # 最近七天告警前十
    # 初始化分类字典
    top_warning = {}
    top_name = {}
    # 此处保持和上一个模块相同的时间范围。因此共用查询结果
    # 由于暂时站点和设备共用一个结果集。此处还未对于设备列进行单独处理
    for j in bar_data:
        if j.site_id in top_warning.keys():
            top_warning.update({j.site_id: top_warning[j.site_id] + 1})
        else:
            top_warning.update({j.site_id: 1})
            top_name.update({j.site_id: j.info})

            # 初始化二维列表
    top_list = []
    for k in top_warning:
        top_list.append([k, top_name[k], top_warning[k]])

        # 将二维列表以子列表中指定元素的值进行正序排序
        # 必须用赋值语句进行重新赋值
    top_list = sorted(top_list, key=lambda s: s[2])
    # 反转列表并取出前十项
    top_list.reverse()
    top_warning_ten = top_list[0:10]

    system_list, object_list, model_list = left_nav()
    return render_template('report.html', system_list=system_list, object_list=object_list, model_list=model_list,
                           four_hour_stay=four_hour_stay, top_warning_ten=top_warning_ten,
                           x_axis_data=x_axis_data, data_pb=data_pb, data_ok=data_ok, maxNum=maxNum)


@main.route('/reportweb', methods=['GET', 'POST'])
def reportweb():
    site_name = request.args.get('top_select')
    print(site_name)
    print(">>>>>>>>>>>>>>>>>>>")
    # datetime相关的类结构参考
    # https://docs.python.org/3/library/datetime.html
    # class datetime.timedelta(days=0, seconds=0, microseconds=0, milliseconds=0, minutes=0, hours=0, weeks=0)
    # 时间字符串主要参数： %Y %m %d %H %M %S %f  年 月 日 时 分 秒 微秒 %W 周
    # 二十四小时遗留告警数据采集
    # 获取当前时间--datetime格式
    current_time = datetime.datetime.now()
    # 取得比较值--二十四小时前的datetime值
    stay_time = current_time - datetime.timedelta(hours=24)
    # 查询状态为PROBLEM的数据
    twenty_four_hour_stay = zabbix_warning.query.filter(zabbix_warning.time > stay_time,
                                                        zabbix_warning.status == 'PROBLEM').all()

    # 三十天遗留告警数据采集
    # 获取当前时间--datetime格式
    current_time = datetime.datetime.now()
    # 取得比较值--三十天前的datetime值
    stay_time = current_time - datetime.timedelta(days=30)
    # 查询状态为PROBLEM的数据
    thirty_day_stay = zabbix_warning.query.filter(zabbix_warning.time > stay_time,
                                                  zabbix_warning.status == 'PROBLEM').all()

    # 最近24小时告警趋势
    # 获取当前时间--datetime格式
    current_time = datetime.datetime.now()
    # 计算查询天数范围
    day_range = 1
    search_range = current_time - datetime.timedelta(days=day_range)
    # 查询时间范围内的所有数据
    bar_data = zabbix_warning.query.filter(zabbix_warning.time > search_range,
                                           zabbix_warning.time < current_time).all()
    # 与前端保持一致需要用到的列表初始化/命名风格与前端保持一致
    x_axis_data = []
    # data_ok = []
    # data_pb = []

    # 求取柱状图横坐标(时间)
    for i in range(day_range * 24):
        # 字符串格式的搜索开始时间
        current_hour_range = (
        datetime.datetime.strftime((search_range + datetime.timedelta(hours=i + 1)), "%Y-%m-%d %H:00:00"))
        # 向柱状图X轴列表写入信息
        x_axis_data.append(current_hour_range)

        # 初始化判断条件及累加器
        # judge = current_time.hour+1
    x_axis_data_first = datetime.datetime.strptime(x_axis_data[0], "%Y-%m-%d %H:%M:%S")
    intital_value = 0
    intital_length = len(x_axis_data)
    data_ok = [intital_value] * intital_length
    data_pb = [intital_value] * intital_length

    # 遍历所有数据，求取柱状图数据
    # 此处不能用小时数遍历。因为无法保证sqlalchemy的order_by对于datetime格式的数据有效
    for j in bar_data:
        # 获取时间差(小时),转换成int时，会自动保留整数位
        time_number = int((j.time - x_axis_data_first).total_seconds() / 3600)
        if j.status == 'OK':
            data_ok[time_number] = data_ok[time_number] + 1
        else:
            data_pb[time_number] = data_pb[time_number] + 1

            # 插件筛选范围的区间
    maxNum = max(data_ok + data_pb)

    # 最近30天告警前十
    # 初始化分类字典
    top_warning = {}
    top_name = {}
    # 计算查询天数范围
    day_range2 = 30
    search_range2 = current_time - datetime.timedelta(days=day_range2)
    # 查询时间范围内的所有数据
    bar_data2 = zabbix_warning.query.filter(zabbix_warning.time > search_range2,
                                            zabbix_warning.time < current_time).all()
    for j in bar_data2:
        if j.site_id in top_warning.keys():
            top_warning.update({j.site_id: top_warning[j.site_id] + 1})
        else:
            top_warning.update({j.site_id: 1})
            top_name.update({j.site_id: j.info})

            # 初始化二维列表
    top_list = []
    for k in top_warning:
        top_list.append([k, top_name[k], top_warning[k]])

        # 将二维列表以子列表中指定元素的值进行正序排序
        # 必须用赋值语句进行重新赋值
    top_list = sorted(top_list, key=lambda s: s[2])
    # 反转列表并取出前十项
    top_list.reverse()
    top_warning_ten = top_list[0:10]
    print(top_warning_ten)

    return render_template('reportweb.html', twenty_four_hour_stay=twenty_four_hour_stay,
                           thirty_day_stay=thirty_day_stay, top_warning_ten=top_warning_ten,
                           x_axis_data=x_axis_data, data_pb=data_pb, data_ok=data_ok, maxNum=maxNum,
                           site_name=site_name)





# 用户管理页面
@main.route('/usercontrol', methods=['GET', 'POST'])
@login_required
def usercontrol():
    if current_user.is_administrator:
        if request.method == 'GET':
            role_list = Role.query.all()
            user_list = User.query.all()
            return render_template('auth/usercontrol.html', role_list=role_list,
                                   user_list=user_list)
        else:
            form = request.form
            ch_list = []
            print(form)
            for i in form:
                # key
                # print(i)
                # value
                # print(form[i])
                if str.isdigit(i):
                    usr = form[i]
                    # print(usr)
                    if User.query.filter_by(username=usr).first().id == int(i):
                        ch_list.append(usr)
                    else:
                        return redirect(url_for('auth.logout'))
            # print(">>>>>>>>>>>>>>>>>>>>")
            for j in ch_list:
                # print(form[j])
                # if User.query.filter_by(username=j).first().role_id \
                # != Role.query.filter_by(name=form[j]).first().id:
                # else:
                # return redirect(url_for('auth.logout'))
                # commit
                usr_role = Role.query.filter_by(name=form[j]).first().id
                usr_commit = User.query.filter_by(username=j).first()
                usr_commit.role_id = usr_role
                db.session.add(usr_commit)
                db.session.commit()
            return redirect(url_for('main.usercontrol'))
    else:
        return redirect(url_for('main.index'))

@main.route('/useradd', methods=['GET', 'POST'])
def useradd():
    form = UserAdd()
    if form.validate_on_submit():
        newuser = User(
                       username=form.username.data,
                       password=form.password.data,
                       email=form.email.data)
        db.session.add(newuser)
        flash("User has been add")
    return render_template('auth/useradd.html',form=form)
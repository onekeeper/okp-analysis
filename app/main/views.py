from flask import render_template, redirect, url_for, flash, request, abort
from flask_login import login_required, current_user
from . import main
from ..database_model import *
import datetime
from ..models import *


@main.route('/', methods=['GET'])
@login_required
def index():
    return redirect(url_for('main.system_health'))


@main.route('/system_health', methods=['GET', 'POST'])
@login_required
def system_health():
    # mainpoint in page
    posts = aop_system.query.all()
    return render_template('healthy/healthy_sys.html', posts=posts)


# 目标管理-第二页
@main.route('/system_health/<sys_id>', methods=['GET', 'POST'])
@login_required
def object_health(sys_id):
    sysname = request.args.get('sysname', type=str)
    # sysname是为了传递第一层名称,不能写在def的括号中。因为是请求
    posts = aop_object_score.query.filter_by(sys_id=sys_id).all()
    return render_template('healthy/healthy_obj.html', posts=posts, sys_id=sys_id,
                           sysname=sysname)


# 目标管理-第三页
@main.route('/system_health/<sys_id>/<object_id>', methods=['GET', 'POST'])
@login_required
def model_health(sys_id, object_id):
    sysname = request.args.get('sysname')
    instance_name = request.args.get('instance_name')
    # instance是因为需要满足传递第二层名称
    posts = aop_model_score.query.filter_by(
        sys_id=sys_id, object_id=object_id).all()
    return render_template('healthy/healthy_mdl.html', posts=posts, sys_id=sys_id, object_id=object_id,
                           sysname=sysname, instance_name=instance_name)


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
    try:
        aop_model_score.query.filter_by(sys_id=sys_id, object_id=object_id).first().model_name
    except Exception as e:
        print(e)
        abort(404)

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
            return redirect(url_for('.index', value="查询错误。请检查aop_model_score表"))
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
            return redirect(url_for('.index', value="查询错误。请检查表内容是否为空"))

    if stop_paint is True:
        flash("查询错误。停止生成表。请检查数据库中是否存在该表或表中是否有数据")
        return redirect(url_for('.index',
                                value="查询错误。停止生成表。请检查数据库中是否存在该表或表中是否有数据"))

    return render_template('healthy/healthy_crt.html', sys_id=sys_id, object_id=object_id, table_name=table_name,
                           sysname=sysname, instance_name=instance_name, chart_name=chart_name,
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


@login_required
def left_nav():
    system_list = aop_system.query.all()
    object_list = aop_object_score.query.all()
    model_list = aop_model_score.query.all()
    return system_list, object_list, model_list


# 告警管理
@main.route('/alarm_monitoring', methods=['GET', 'POST'])
@login_required
def alarm_monitoring():
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
    top_warning_site_id = {}
    top_warning_site_info = {}
    top_warning_site_type = {}
    # 此处保持和上一个模块相同的时间范围。因此共用查询结果
    # 由于暂时站点和设备共用一个结果集。此处还未对于设备列进行单独处理
    for j in bar_data:
        if j.site_id in top_warning_site_id.keys():
            top_warning_site_id.update({j.site_id: top_warning_site_id[j.site_id] + 1})
        else:
            top_warning_site_id.update({j.site_id: 1})
            top_warning_site_info.update({j.site_id: j.info})
            top_warning_site_type.update({j.site_id: j.type})

            # 初始化二维列表
    top_list = []
    for k in top_warning_site_id:
        top_list.append([k, top_warning_site_info[k], top_warning_site_type[k], top_warning_site_id[k]])

        # 将二维列表以子列表中指定元素的值进行正序排序
        # 必须用赋值语句进行重新赋值
    top_list = sorted(top_list, key=lambda s: s[3])
    # 反转列表并取出前十项
    top_list.reverse()
    top_warning_ten = top_list[0:10]
    return render_template('warning/wbase.html', four_hour_stay=four_hour_stay, top_warning_ten=top_warning_ten,
                           x_axis_data=x_axis_data, data_pb=data_pb, data_ok=data_ok, maxNum=maxNum)






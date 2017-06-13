import os
import sys

from flask import render_template, redirect, request, url_for, flash
from flask_login import login_user, logout_user, login_required, \
    current_user

from app.auth.write_info import run as write_database_models
from . import auth
from .forms import *
import uuid
from .. import db
from ..models import *
from ...initscore import initscore


@auth.route('/', methods=['GET'])
def index():
    return render_template('auth/index.html')


@auth.route('/login', methods=['GET', 'POST'])
def login():
    form = LoginForm()
    if form.validate_on_submit():
        user = User.query.filter_by(username=form.username.data).first()
        if user is not None and user.verify_password(form.password.data):
            login_user(user, form.remember_me.data)
            return redirect(request.args.get('next') or url_for('main.index'))
        flash('Invalid username or password.')
    return render_template('auth/login.html', form=form)


@auth.route('/logout')
@login_required
def logout():
    logout_user()
    flash('You have been logged out.')
    return redirect(url_for('main.index'))


@auth.route('/change-password', methods=['GET', 'POST'])
@login_required
def change_password():
    form = ChangePasswordForm()
    if form.validate_on_submit():
        if current_user.verify_password(form.old_password.data):
            current_user.password = form.password.data
            db.session.add(current_user)
            flash('Your password has been updated.')
            return redirect(url_for('main.index'))
        else:
            flash('Invalid password.')
    return render_template("auth/change_password.html", form=form)


@auth.route('/change-email', methods=['GET', 'POST'])
@login_required
def change_email():
    form = ChangeEmailForm()
    if form.validate_on_submit():
        if current_user.verify_password(form.password.data):
            current_user.email = form.email.data
            db.session.add(current_user)
            flash('Your email has been updated.')
            return redirect(url_for('main.index'))
        else:
            flash('Invalid email or password.')
    return render_template("auth/change_email.html", form=form)


@auth.route('/change-username', methods=['GET', 'POST'])
@login_required
def change_username():
    form = ChangeUsernameForm()
    if form.validate_on_submit():
        if current_user.verify_password(form.old_password.data):
            current_user.username = form.username.data
            db.session.add(current_user)
            flash('Your username has been updated.')
            return redirect(url_for('main.index'))
        else:
            flash('Invalid username or password.')
    return render_template("auth/change_username.html", form=form)


@auth.route('/supervise-password', methods=['GET', 'POST'])
@login_required
def supervise_password():
    if current_user.is_administrator:
        form = ResetPasswordForm()
        if form.validate_on_submit():
            print(request.form['username'])
            p_user = User.query.filter_by(username=request.form['username']).first()
            if p_user:
                p_user.password = '123123123'
                db.session.add(p_user)
                flash('User password has been reset.')
                return redirect(url_for('auth.supervise_password'))
            else:
                flash('Invalid username.')
        return render_template("auth/supervise_password.html", form=form)
    return redirect(url_for('main.index'))


@auth.route('/increase-object', methods=['GET', 'POST'])
@login_required
def increase_object():
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

            # 依据模板循环添加aop_model_template 记录
            model_temp_list = aop_model_template.query.filter_by(object_type=form.type.data)
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
            initscore(form.sys_id.data)
        else:
            flash('对象名称已经存在！')
    return render_template('auth/increase_object.html', form=form)


@auth.route('/increase-user', methods=['GET', 'POST'])
def increase_user():
    form = UserAdd()
    if form.validate_on_submit():
        newuser = User(
                       username=form.username.data,
                       password=form.password.data,
                       email=form.email.data)
        db.session.add(newuser)
        flash("User has been add")
    return render_template('auth/increase_user.html',form=form)


@auth.route('/supervise-permission', methods=['GET', 'POST'])
@login_required
def supervise_permission():
    if current_user.is_administrator:
        if request.method == 'GET':
            role_list = Role.query.all()
            user_list = User.query.all()
            return render_template('auth/supervise_permission.html', role_list=role_list,
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
            return redirect(url_for('auth.supervise_permission'))
    else:
        return redirect(url_for('main.index'))

@auth.route('/reset-sites', methods=['GET', 'POST'])
@login_required
def reset_sites():
    mainpath = os.getcwd()
    form = ChangeDatabaseModel()
    if current_user.is_operate:
        if request.method == 'POST':
            fw = open(os.path.join(mainpath,'run/add_database_config.txt'), 'w')
            fw.writelines(form.databasename.data)
            fw.close()
            write_database_models()
            
            flash("reload success")
    fr = open(os.path.join(mainpath,'run/add_database_config.txt'), 'r+')
    post = fr.readlines()
    fr.close()
    
    return render_template('auth/reset_sites.html', form=form, post=post)


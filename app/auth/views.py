import os
import sys

from flask import render_template, redirect, request, url_for, flash
from flask_login import login_user, logout_user, login_required, \
    current_user

from app.auth.write_info import run as write_database_models
from . import auth
from .forms import LoginForm, RegistrationForm, ChangePasswordForm,\
     ChangeEmailForm, ChangeUsernameForm, ChangeDatabaseModel, ResetPasswordForm
from .. import db
from ..models import User


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


@auth.route('/reset-password', methods=['GET', 'POST'])
@login_required
def resetpassword():
    if current_user.is_administrator:
        form = ResetPasswordForm()
        if form.validate_on_submit():
            print(request.form['username'])
            p_user = User.query.filter_by(username=request.form['username']).first()
            if p_user:
                p_user.password = '123123123'
                db.session.add(p_user)
                flash('User password has been reset.')
                return redirect(url_for('auth.resetpassword'))
            else:
                flash('Invalid username.')
        return render_template("auth/reset_password.html", form=form)
    return redirect(url_for('main.index'))


@auth.route('/reset-model', methods=['GET', 'POST'])
@login_required
def createdatamodel():
    mainpath = os.getcwd()
    form = ChangeDatabaseModel()
    if current_user.is_operate:
        if request.method == 'POST':
            fw = open(mainpath + '/app/add_database_config.txt', 'w')
            fw.writelines(form.databasename.data)
            fw.close()
            write_database_models()
            flash("reload success")
    fr = open(mainpath + '/app/add_database_config.txt', 'r+')
    post = fr.readlines()
    fr.close()
    return render_template('auth/reload_databasemodel.html', form=form, post=post)

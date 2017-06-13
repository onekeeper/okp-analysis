from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, BooleanField, SubmitField, \
    SelectField
from wtforms.validators import DataRequired, Length, Email, Regexp, EqualTo
from wtforms import ValidationError
from ..models import *


class LoginForm(FlaskForm):
    username = StringField('用户名', validators=[
        DataRequired(), Length(1, 64), Regexp('^[A-Za-z][A-Za-z0-9_.]*$', 0,
                                              'UserNames must have only letters, '
                                              'numbers, dots or underscores')])
    password = PasswordField('密码', validators=[DataRequired(), Length(8, 20)])
    remember_me = BooleanField('保持登录状态')
    submit = SubmitField('登录')


class RegistrationForm(FlaskForm):
    email = StringField('Email', validators=[DataRequired(), Length(1, 64),
                                           Email()])
    username = StringField('Username', validators=[
        DataRequired(), Length(1, 64), Regexp('^[A-Za-z][A-Za-z0-9_.]*$', 0,
                                              'UserNames must have only letters, '
                                              'numbers, dots or underscores')])
    password = PasswordField('Password', validators=[
        DataRequired(), EqualTo('password2', message='Passwords must match.'), Length(8, 20)])
    password2 = PasswordField('Confirm password', validators=[DataRequired(), Length(8, 20)])
    submit = SubmitField('Register')

    @staticmethod
    def validate_email(self,field):
        if User.query.filter_by(email=field.data).first():
            raise ValidationError('Email already registered.')

    @staticmethod
    def validate_username(self,field):
        if User.query.filter_by(username=field.data).first():
            raise ValidationError('Username already in use.')

class ChangePasswordForm(FlaskForm):
    old_password = PasswordField('原密码', validators=[DataRequired()])
    password = PasswordField('新密码', validators=[
        DataRequired(), EqualTo('password2', message='Passwords must match')])
    password2 = PasswordField('确认新密码', validators=[DataRequired()])
    submit = SubmitField('修改')


class ChangeEmailForm(FlaskForm):
    email = StringField('New Email', validators=[DataRequired(), Length(1, 64),
                                                 Email()])
    password = PasswordField('Password', validators=[DataRequired()])
    submit = SubmitField('Update Email Address')

    @staticmethod
    def validate_email(self,field):
        if User.query.filter_by(email=field.data).first():
            raise ValidationError('Email already registered.')

class ChangeUsernameForm(FlaskForm):
    username = StringField('Username', validators=[
        DataRequired(), Length(1, 64), Regexp('^[A-Za-z][A-Za-z0-9_.]*$', 0,
                                              'UserNames must have only letters, '
                                              'numbers, dots or underscores')])
    old_password = PasswordField('Password', validators=[DataRequired()])
    submit = SubmitField('Update Username')

    @staticmethod
    def validate_username(self,field):
        if User.query.filter_by(username=field.data).first():
            raise ValidationError('Username already in use.')

class ChangeDatabaseModel(FlaskForm):
    databasename = StringField('输入所有数据库名称，逗号隔开，例：hzmc,hzmc1,hzmc2', validators=[DataRequired, Length(1, 1000)])
    submit = SubmitField('Reload database')


class ResetPasswordForm(FlaskForm):
    username = StringField('Username', validators=[
        DataRequired(), Length(1, 64), Regexp('^[A-Za-z][A-Za-z0-9_.]*$', 0,
                                              'UserNames must have only letters, '
                                              'numbers, dots or underscores')])
    submit = SubmitField('Reset Password')


class UserAdd(FlaskForm):
    username = StringField('Username',validators=[DataRequired(), Length(1,50),
                                                  Regexp('^[A-Za-z][A-Za-z0-9_.]*$', 0,
                                                  'UserNames must have only letters, numbers, dots or underscores')])
    email = StringField('Email', validators=[DataRequired(), Length(1, 64), Email()])
    password = PasswordField('Password', validators=[DataRequired()])

    submit = SubmitField('Add User')

class AddObjectForm(FlaskForm):
    sys_id = StringField("sys_id", validators=[DataRequired("sys_id不能为空！"), Length(1, 200)])
    sys_name = StringField("系统名称", validators=[DataRequired("系统名称不能为空！"), Length(1, 200)])
    type = SelectField("模块类型", validators=[DataRequired()],
                       choices=[('oracle', 'Oracle'), ('weblogic', 'Weblogic')])
    object_name = StringField("对象名称", validators=[DataRequired("对象名称不能为空！"), Length(1, 200)])
    ip = StringField("IP", validators=[DataRequired("IP地址不能为空！"), Length(1, 15)])
    port = StringField("端口", validators=[DataRequired("端口不能为空！"), Length(1, 10)])
    protocol = SelectField("协议", validators=[DataRequired()],
                           choices=[('0', 'TCP/IP'), ('1', 't3'), ('1', 't3s')])
    usename = StringField("用户名", validators=[DataRequired("用户名不能为空！"), Length(1, 200)])
    passwd = PasswordField("密码", validators=[DataRequired("密码不能为空！"), Length(1, 200)])
    dbname = StringField("数据库名称")
    inst_id = StringField("实例编号"，validators=[DataRequired("实例编号不能为空！"), Length(1, 10)])
    submit = SubmitField('添加')

    @staticmethod
    def validate_dbname(self, field):
        if self.type.data == 'oracle':
            if not self.dbname.data and not self.dbname.data.strip():
                raise ValidationError('类型为数据库时，数据库名称不能为空!')

    @staticmethod
    def validate_sys_id(self, field):
        if aop_system.query.filter_by(sys_id=field.data).first() is not None:
            raise ValidationError('该系统已经存在')


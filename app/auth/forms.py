from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, BooleanField, SubmitField
from wtforms.validators import DataRequired, Length, Email, Regexp, EqualTo
from wtforms import ValidationError
from ..models import User


class LoginForm(FlaskForm):
    username = StringField('Username', validators=[
        DataRequired(), Length(1, 64), Regexp('^[A-Za-z][A-Za-z0-9_.]*$', 0,
                                              'UserNames must have only letters, '
                                              'numbers, dots or underscores')])
    password = PasswordField('Password', validators=[DataRequired(), Length(8, 20)])
    remember_me = BooleanField('Keep me logged in')
    submit = SubmitField('Log In')


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
    def validate_email(field):
        if User.query.filter_by(email=field.data).first():
            raise ValidationError('Email already registered.')

    @staticmethod
    def validate_username(field):
        if User.query.filter_by(username=field.data).first():
            raise ValidationError('Username already in use.')

class ChangePasswordForm(FlaskForm):
    old_password = PasswordField('Old password', validators=[DataRequired()])
    password = PasswordField('New password', validators=[
        DataRequired(), EqualTo('password2', message='Passwords must match')])
    password2 = PasswordField('Confirm new password', validators=[DataRequired()])
    submit = SubmitField('Update Password')


class ChangeEmailForm(FlaskForm):
    email = StringField('New Email', validators=[DataRequired(), Length(1, 64),
                                                 Email()])
    password = PasswordField('Password', validators=[DataRequired()])
    submit = SubmitField('Update Email Address')

    @staticmethod
    def validate_email(field):
        if User.query.filter_by(email=field.data).first():
            raise ValidationError('Email already registered.')

class ChangeUsernameForm(FlaskForm):
    username = StringField('Username', validators=[
        DataRequired(), Length(1, 64), Regexp('^[A-Za-z][A-Za-z0-9_.]*$', 0,
                                              'UserNames must have only letters, '
                                              'numbers, dots or underscores')])
    password = PasswordField('Password', validators=[DataRequired()])
    submit = SubmitField('Update Username')

    @staticmethod
    def validate_username(field):
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


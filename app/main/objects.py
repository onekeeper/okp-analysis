from flask_wtf import FlaskForm
from wtforms import StringField, PasswordField, TextAreaField, BooleanField, SelectField,\
    SubmitField
from wtforms.validators import DataRequired, Length, Email, Regexp
from wtforms import ValidationError
from flask_pagedown.fields import PageDownField
from ..models import Role, User

class AddObjectForm(FlaskForm):
    sys_id = StringField("sys_id", validators=[DataRequired("sys_id不能为空！"), Length(1, 200)])
    sys_name = StringField("系统名称", validators=[DataRequired("系统名称不能为空！"), Length(1, 200)])
    type = SelectField("模块类型", validators=[DataRequired()],
                       choices=[('oracle','Oracle'),('weblogic','Weblogic')])
    object_name = StringField("对象名称", validators=[DataRequired("对象名称不能为空！"), Length(1, 200)])
    ip = StringField("IP", validators=[DataRequired("IP地址不能为空！"), Length(1, 15)])
    port = StringField("端口", validators=[DataRequired("端口不能为空！"), Length(1, 10)])
    protocol = SelectField("协议", validators=[DataRequired()],
                           choices=[('0','TCP/IP'),('1','t3'),('1','t3s')])
    usename = StringField("用户名", validators=[DataRequired("用户名不能为空！"), Length(1, 200)])
    passwd = PasswordField("密码", validators=[DataRequired("密码不能为空！"), Length(1, 200)])
    dbname = StringField("数据库名称")
    submit = SubmitField('添加')

    def validate_dbname(self, field):
        if self.type.data == 'oracle':
            if not self.dbname.data and not self.dbname.data.strip():
                raise ValidationError('类型为数据库时，数据库名称不能为空!')
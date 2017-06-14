from werkzeug.security import generate_password_hash, check_password_hash
from flask import current_app
from flask_login import UserMixin, AnonymousUserMixin
from . import db, login_manager


class Permission:
    READ = 0x01  # 查看权限
    UPDATE = 0x02  # 部署权限
    ADMINISTER = 0x80  # 管理权限/重置用户密码等


class aop_system(db.Model):
    __tablename__ = 'aop_system'

    sys_id = db.Column(db.VARCHAR(100), primary_key=True)
    sysname = db.Column(db.UnicodeText)
    status = db.Column(db.Integer)
    score = db.Column(db.DECIMAL, default=0)
    update_time = db.Column(db.DATETIME)


class aop_object_score(db.Model):
    __tablename__ = 'aop_object_score'

    sys_id = db.Column(db.VARCHAR(100), primary_key=True)
    object_id = db.Column(db.VARCHAR(100), primary_key=True)
    object_type = db.Column(db.UnicodeText)
    object_name = db.Column(db.UnicodeText)
    instance_id = db.Column(db.INTEGER)
    instance_name = db.Column(db.UnicodeText)
    score = db.Column(db.DECIMAL, default=0)
    status = db.Column(db.VARCHAR(100), default='OK')
    username = db.Column(db.UnicodeText)
    password = db.Column(db.UnicodeText)
    update_time = db.Column(db.DATETIME)


# model模板
class aop_model_template(db.Model):
    __tablename__ = 'aop_model_template'

    sys_id = db.Column(db.VARCHAR(100), primary_key=True)
    object_id = db.Column(db.VARCHAR(100), primary_key=True)
    model_id = db.Column(db.INTEGER, primary_key=True)
    model_name = db.Column(db.VARCHAR(100))
    table_name = db.Column(db.VARCHAR(100))
    score = db.Column(db.DECIMAL(5,2), default=0)
    update_time = db.Column(db.DATETIME)
    object_type = db.Column(db.VARCHAR(100))

class aop_loadinfo(db.Model):
    __table_name__ = 'aop_loadinfo'

    dbname = db.Column(db.VARCHAR(100), primary_key=True)
    status = db.Column(db.INTEGER)
    inst_id = db.Column(db.INTEGER), primary_key=True)
    snap_id = db.Column(db.INTEGER)
    object_id = db.Column(db.VARCHAR(100)), primary_key=True)
    oraconn = db.Column(db.VARCHAR(100))
    mysqlconn = db.Column(db.VARCHAR(100))
    update_time = db.Column(db.DATETIME)


class aop_model_score(db.Model):
    __tablename__ = 'aop_model_score'

    sys_id = db.Column(db.VARCHAR(100), primary_key=True)
    object_id = db.Column(db.VARCHAR(100), primary_key=True)
    model_id = db.Column(db.INTEGER, primary_key=True)
    object_type = db.Column(db.VARCHAR(100), primary_key=True)
    model_name = db.Column(db.UnicodeText)
    table_name = db.Column(db.UnicodeText)
    # table_name不作为主键。防止model_id冲突
    score = db.Column(db.DECIMAL(5,2), default=0)
    update_time = db.Column(db.DATETIME)


class zabbix_warning(db.Model):
    __tablename__ = 'zabbix_warning'

    time = db.Column(db.DATETIME, primary_key=True)
    site_id = db.Column(db.VARCHAR(100), primary_key=True)
    info = db.Column(db.VARCHAR(100))
    type = db.Column(db.VARCHAR(100))
    status = db.Column(db.VARCHAR(100))


class Role(db.Model):
    __tablename__ = 'roles'
    id = db.Column(db.Integer, primary_key=True)
    name = db.Column(db.String(64), unique=True)
    default = db.Column(db.Boolean, default=False, index=True)
    permissions = db.Column(db.Integer)
    users = db.relationship('User', backref='role', lazy='dynamic')

    @staticmethod
    def insert_roles():
        # 注意roles当中值的写法。roles最终目的是生成元组。若生成的是int类型。
        # 则后续计算时，无法用int类型进行列表解析
        roles = {
            'User': (Permission.READ, True),
            'Operate': (Permission.READ |
                        Permission.UPDATE, False),
            'Administrator': (0xff, False)
        }
        for r in roles:
            role = Role.query.filter_by(name=r).first()
            if role is None:
                role = Role(name=r)
            role.permissions = roles[r][0]
            role.default = roles[r][1]
            db.session.add(role)
        db.session.commit()

    def __repr__(self):
        return '<Role %r>' % self.name


class User(UserMixin, db.Model):
    __tablename__ = 'users'
    id = db.Column(db.Integer, primary_key=True)
    email = db.Column(db.String(64), unique=True, index=True)
    username = db.Column(db.String(64), unique=True, index=True)
    role_id = db.Column(db.Integer, db.ForeignKey('roles.id'))
    password_hash = db.Column(db.String(128))

    def __init__(self, **kwargs):
        super(User, self).__init__(**kwargs)
        if self.role is None:
            if self.email == current_app.config['FLASKY_ADMIN']:
                self.role = Role.query.filter_by(permissions=0xff).first()
            if self.role is None:
                self.role = Role.query.filter_by(default=True).first()

    @property
    def password(self):
        raise AttributeError('password is not a readable attribute')

    @password.setter
    def password(self, password):
        self.password_hash = generate_password_hash(password, method='pbkdf2:sha256', salt_length=8)

    def verify_password(self, password):
        return check_password_hash(self.password_hash, password)

    def can(self, permissions):
        return self.role is not None and \
               (self.role.permissions & permissions) == permissions

    def is_administrator(self):
        return self.can(Permission.ADMINISTER)

    def is_operate(self):
        return self.can(Permission.UPDATE)

    def __repr__(self):
        return '<User %r>' % self.username


class AnonymousUser(AnonymousUserMixin):
    def can(self, permissions):
        return False

    def is_administrator(self):
        return False


login_manager.anonymous_user = AnonymousUser


@login_manager.user_loader
def load_user(user_id):
    return User.query.get(int(user_id))

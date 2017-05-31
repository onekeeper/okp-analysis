import os
basedir = os.path.abspath(os.path.dirname(__file__))

# global variables
MYSQL_DATABASE = 'hzmc_data'
MYSQL_HOST = '127.0.0.1'
MYSQL_ACCOUNT = 'root'
MYSQL_PASSWORD = 'hzmcmysql'
MYSQL_CONNECT = 'mysql+pymysql'
MYSQL_CHARTSET = 'charset=utf8'

# global init healthy databases
MYSQL_HEALTHY_DB = 'hzmc111,hzmc222'  # with no blankspace after comma; and same style with add_database_config

# set database URI
DATABASE_URI = MYSQL_CONNECT + \
               '://'+MYSQL_ACCOUNT + \
               ':'+MYSQL_PASSWORD + \
               '@'+MYSQL_HOST + \
               '/'+MYSQL_DATABASE + \
               '?'+MYSQL_CHARTSET

class Config:
    SECRET_KEY = os.environ.get('SECRET_KEY') or 'hard to guess string'
    SQLALCHEMY_COMMIT_ON_TEARDOWN = True
    SQLALCHEMY_TRACK_MODIFICATIONS = False
    MAIL_SERVER = 'smtp.qq.com'
    MAIL_PORT = 587
    MAIL_USE_TLS = True
    MAIL_USERNAME = os.environ.get('MAIL_USERNAME')
    MAIL_PASSWORD = os.environ.get('MAIL_PASSWORD')
    FLASKY_MAIL_SUBJECT_PREFIX = '[Flask Web]'
    FLASKY_MAIL_SENDER = 'root<root@hzmc.com>'
    FLASKY_ADMIN = os.environ.get('FLASKY_ADMIN')
    FLASKY_POSTS_PER_PAGE = 50

    @staticmethod
    def init_app(app):
        pass


class DevelopmentConfig(Config):
    DEBUG = True
    SQLALCHEMY_DATABASE_URI = DATABASE_URI
    SQLALCHEMY_BINDS = {
        'oracle' : 'mysql+pymysql://root:hzmcmysql@127.0.0.1/oracle'
    }

config = {
    'development': DevelopmentConfig,
    'default': DevelopmentConfig
}

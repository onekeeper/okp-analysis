import os
import sys
basedir = os.path.abspath(os.path.dirname(__file__))

# global variables
MYSQL_DATABASE = 'hzmc_data'
MYSQL_HOST = '127.0.0.1'
MYSQL_ACCOUNT = 'root'
MYSQL_PASSWORD = 'hzmcmysql'
MYSQL_CONNECT = 'mysql+pymysql'
MYSQL_CHARTSET = 'charset=utf8'
MON_URL = 'http://127.0.0.1:8080'

# global init healthy databases
main_path = os.getcwd()
sys.path.append(main_path)
fr = open(os.path.join(main_path, 'run/add_database_config.txt'),'r+')
# MYSQL_HEALTHY_DB = 'hzmc_111,hzmc_222'  # with no blank_space after comma; and same style with add_database_config
MYSQL_HEALTHY_DB = fr.readline()
MYSQL_HEALTHY_DB = MYSQL_HEALTHY_DB.rstrip('\n')

print(">>>>>>>>>>>>>>>>>>>>")
print("MYSQL_HEALTHY_DB : ",MYSQL_HEALTHY_DB)
print(">>>>>>>>>>>>>>>>>>>>")

# set database URI
DATABASE_URI = MYSQL_CONNECT + \
               '://'+MYSQL_ACCOUNT + \
               ':'+MYSQL_PASSWORD + \
               '@'+MYSQL_HOST + \
               '/'+MYSQL_DATABASE + \
               '?'+MYSQL_CHARTSET

# init all binds
DATABASE_BINDS = {}

# deal the text string , load into an arr
HEALTHY_DB_LIST = MYSQL_HEALTHY_DB.split(',')

for i in HEALTHY_DB_LIST:
    DATABASE_BINDS[i] = MYSQL_CONNECT + \
               '://'+MYSQL_ACCOUNT + \
               ':'+MYSQL_PASSWORD + \
               '@'+MYSQL_HOST + \
               '/'+i + \
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
    SQLALCHEMY_BINDS = DATABASE_BINDS

config = {
    'development': DevelopmentConfig,
    'default': DevelopmentConfig
}

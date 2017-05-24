#!/usr/bin/env python
import os
from app import create_app, db
from app.models import User, Role, Permission
from config import MYSQL_HEALTHY_DB
from flask_script import Manager, Shell
from flask_migrate import Migrate, MigrateCommand
from app.auth.write_info import run as write_database_models


app = create_app(os.getenv('FLASK_CONFIG') or 'default')
manager = Manager(app)
migrate = Migrate(app, db)

def make_shell_context():
    return dict(app=app, db=db, User=User, Role=Role, Permission=Permission)
manager.add_command("shell", Shell(make_context=make_shell_context))
manager.add_command('db', MigrateCommand)


@manager.command
def test():
    """Run the unit tests."""
    import unittest
    tests = unittest.TestLoader().discover('tests')
    unittest.TextTestRunner(verbosity=2).run(tests)


@manager.command
def init():
    """Run initalize database"""
    db.create_all()
    print("finish init database\n")
    Role.insert_roles()
    print("finish init roles\n")
    smy = User(username='admin', email='admin@hzmc.com.cn',
               password='okp@admin!')
    db.session.add(smy)
    db.session.commit()
    print("finish create account\n")
    print("account is : admin")
    print("password is : okp@admin!")
    admin = Role.query.filter_by(name='Administrator').first().id
    print("admin role id is : %s" % admin)
    smy = User.query.filter_by(username='admin').first()
    smy.role_id = admin
    db.session.add(smy)
    print("account role has been set to admin")


@manager.command
def db_init():
    """Run initalize database about the healthy point"""
    print("start reload database models\n")
    mainpath = os.getcwd()
    print("program run in path :", mainpath)
    fw = open(mainpath + '/app/add_database_config.txt', 'w')
    print("open add_database_config.txt")
    fw.writelines(MYSQL_HEALTHY_DB)
    print("write new db list into txt")
    fw.close()
    print("close txt")
    write_database_models()
    print("reload database models")

if __name__ == '__main__':
    manager.run()

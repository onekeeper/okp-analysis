#!/usr/bin/env python
import os
from app import create_app, db
from app.models import User, Role, Permission
from flask_script import Manager, Shell
from flask_migrate import Migrate, MigrateCommand

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
    print("admin role id is : %s",admin)
    smy = User.query.filter_by(username='admin').first()
    smy.role_id = admin
    db.session.add(smy)
    print("account role has been set to admin")

if __name__ == '__main__':
    manager.run()

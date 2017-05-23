from flask import Blueprint

auth = Blueprint('auth', __name__)

if True:
    from . import views

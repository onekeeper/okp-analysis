from flask import Blueprint

library = Blueprint('library', __name__)

if True:
    from . import views
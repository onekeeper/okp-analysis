from flask import render_template, redirect, request, url_for, flash
from flask_login import login_user, logout_user, login_required, \
    current_user
from . import library

@library.route('/',methods=['GET', 'POST'])
def index():
    return render_template('library/lbase.html')



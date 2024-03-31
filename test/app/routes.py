from flask import render_template
from app import app

@app.route('/')
@app.route('/index')
def index():
    user = {'username': 'TrizzXD'}
    return render_template('index.html', user=user)

@app.route('/dashboard')
def dashboard():
    return render_template('dashboard.html')


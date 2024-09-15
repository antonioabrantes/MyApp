from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def hello_world():
    name = "Ola mundo tudo bem !"
    return render_template('index.html',name=name)
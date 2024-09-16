#https://github.com/templates-back4app/containers-python-flask-sample

from flask import Flask, render_template

app = Flask(__name__)

@app.route('/')
def hello():
    name = "ola mundo, tudo bem com voce!"
    return render_template("index.html",name=name)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
#https://github.com/templates-back4app/containers-python-flask-sample

from flask import Flask

app = Flask(__name__)

@app.route('/')
def hello():
    return "ola mundo!"

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=8080)
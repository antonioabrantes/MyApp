   
import os
from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def hello():
    name = "Ola mundo"
    return render_template('index.html',name=name)

if __name__ == "__main__":
    port = int(os.environ.get("PORT", 5000))  # Pegue a porta da variável de ambiente ou use 5000
    app.run(host="0.0.0.0", port=port) 
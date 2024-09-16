   
import os
from flask import Flask, render_template

app = Flask(__name__)

@app.route("/")
def hello():
    name = "Ola mundo"
    return render_template('index.html',name=name)

if __name__ == "__main__":
    # Defina a porta a partir da variável de ambiente PORT, ou use 5000 por padrão
    port = int(os.environ.get("PORT", 5000))
    app.run(port=port)
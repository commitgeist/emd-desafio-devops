"""
Just a simple hello-world app.
"""
import os
from flask import Flask

app = Flask(__name__)


@app.route("/")
def hello_world():
    ENV_NAME = os.getenv("ENV_NAME", "World")
    return "Hello, {}".format(ENV_NAME)


if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000, debug=True)

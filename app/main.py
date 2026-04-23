from flask import Flask
import os

app = Flask(__name__)

@app.route("/")
def home():
    return f"""
    Service: {os.getenv('SERVICE_NAME')}
    Env: {os.getenv('ENV')}
    Value: {os.getenv('CUSTOM_VALUE')}
    """

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=8000)

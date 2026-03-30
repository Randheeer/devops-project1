from flask import Flask
import os

app = Flask(__name__) # Create web application

@app.route("/")       # This means "when someone visits the root URL (/)"

def hello ():         # Run this function
    return "Hello from Devops Practical Container is running."


if __name__ == '__main__' :
    app.run(host='0.0.0.0', port=5000) # Start the server on port 5000, listening on all network interferences

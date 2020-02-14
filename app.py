from flask import Flask, render_template
import pymongo

app = Flask(__name__)

@app.route('/')
def home():
	return "Hi,I am running on Host"

if __name__ == '__main__':
	app.run(debug=True)
from flask import Flask, jsonify, send_from_directory

app = Flask(__name__)

@app.route("/hello")
def hello():
    return jsonify({"message": "/hello: Hello from Flask!"})

@app.route("/")
def root():
    return jsonify({"message": "/: Hello from Flask!"})

# @app.route('/<path:filename>')
# def download_file(filename):
#     # return send_from_directory('/', filename, as_attachment=True)
#     return send_from_directory('/', filename, as_attachment=False)

@app.route('/8a27c35b-92a5-42d6-9e99-e9906b1bae87')
def serve_vapt_key():
    return send_from_directory('vapt', '8a27c35b-92a5-42d6-9e99-e9906b1bae87', mimetype='text/plain')

if __name__ == "__main__":
    app.run(host="0.0.0.0", port=5000)
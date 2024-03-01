from flask import Flask, jsonify, request

app = Flask(__name__)

@app.get('/')
def index():
    return jsonify(message='Devops Laboratory - hello world')

@app.get('/health')
def health():
    return jsonify(status='ok')

@app.post('/echo')
def echo():
    payload = request.get_json(silent=True) or {}
    return jsonify(payload)

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)

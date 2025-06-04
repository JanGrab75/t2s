from flask import Flask

app = Flask(__name__)

@app.route('/')
def home():
    return '''
    <html>
      <head>
        <title>Hello & Bye@2</title>
      </head>
      <body>
        <h1>Hello & Bye@2</h1>
        <button onclick="showTime()">Pokaż godzinę</button>
        <p id="time"></p>
        <script>
          function showTime() {
            var now = new Date();
            document.getElementById('time').innerText = now.toLocaleTimeString();
          }
        </script>
      </body>
    </html>
    '''

if __name__ == '__main__':
    app.run(host='0.0.0.0', port=5000)
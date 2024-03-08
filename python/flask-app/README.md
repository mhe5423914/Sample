
# To Debug inside k8s pod
1) Login into the pod

2) Enter python virtual environment (if needed)

# virtual environment on /venv
```
. /vevn/bin/activate
```

# run the application
```
export FLASK_APP=/daemon/api/api.py
export FLASK_DEBUG=1
python -m flask run --host=0.0.0.0
```

# Sample output
```
* Serving Flask app "/daemon/api/api.py" (lazy loading)
 * Environment: production
   WARNING: Do not use the development server in a production environment.
   Use a production WSGI server instead.
 * Debug mode: on
 * Running on http://0.0.0.0:5000/ (Press CTRL+C to quit)
 * Restarting with stat
registered 'sha256_crypt' handler: <class 'passlib.handlers.sha2_crypt.sha256_crypt'>
 * Debugger is active!
 * Debugger PIN: 105-119-810
registered 'sha256_crypt' handler: <class 'passlib.handlers.sha2_crypt.sha256_crypt'>
127.0.0.1 - - [29/Sep/2023 00:46:41] "GET / HTTP/1.1" 404 -
>>>>> 2023-09-29 12:46:41 AM | werkzeug > _log --- INFO
127.0.0.1 - - [29/Sep/2023 00:46:41] "GET / HTTP/1.1" 404 -
127.0.0.1 - - [29/Sep/2023 00:46:47] "GET /GetToken HTTP/1.1" 404 -
>>>>> 2023-09-29 12:46:47 AM | werkzeug > _log --- INFO
127.0.0.1 - - [29/Sep/2023 00:46:47] "GET /GetToken HTTP/1.1" 404 -
127.0.0.1 - - [29/Sep/2023 00:46:53] "GET / HTTP/1.1" 404 -
>>>>> 2023-09-29 12:46:53 AM | werkzeug > _log --- INFO
127.0.0.1 - - [29/Sep/2023 00:46:53] "GET / HTTP/1.1" 404 -
```

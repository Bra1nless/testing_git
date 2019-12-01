from bottle import route, run, view, static_file, redirect, request
import random
import os


@route("/static/<filename:path>")
def send_static(filename):
    return static_file(filename, root="static")


@route("/")
@view("index")
def index():
    db = [1, 2, 3, 4, 5]
    db1 = ["a", "b", "c", "d", "e"]
    res = []
    for x in range(0,4):
        a = random.choice(db)
        b = random.choice(db1)
        res.append(a*b)
    return {"result": res}


if os.environ.get('APP_LOCATION') == 'heroku':
    run(host="0.0.0.0", port=int(os.environ.get("PORT", 5000)))
else:
    run(host='localhost', port=8080, debug=True)
from bottle import route, run, view, static_file, redirect, request
from random import random

@route("/static/<filename:path>")
def send_static(filename):
    return static_file(filename, root="static")


@route("/")
@view("index")
def index():
    db = [1, 2, 3, 4, 5]
    db1 = ["a", "b", "c", "d", "e"]
    res = {}
    for x in range(0,4):
        a = random.choise(db)
        b = random.choise(db1)
        res.append(a*b)
    return {"result": res}


run(host="localhost", port=8080)
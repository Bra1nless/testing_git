<html>
    <head>
        <title>Рандомный рандом</title>
        <link rel ="stylesheet" href="/static/styles.css">
        <script
        src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
        crossorigin="anonymous"></script>
        <script src="static/script.js"></script>
    </head>
    <body>
    <div class="conteiner">
        <h1>Текущие задачи</h1>
        <ul id="todo-list"></ul>
        % for item in result:
            <li>{{item}}
        % end 
    </div>
    </body>
</html>
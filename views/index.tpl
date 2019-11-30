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
            <li><p>{{item}}</p>
        % end
            <!-- % if task.is_completed:
                <li class="completed">
                    <input class="checkbox" data-uid={{task.uid}} type="checkbox"
                       disabled="disabled" checked="checked" />
            % else:
                <li>
                    <input class="checkbox" data-uid="{{ task.uid }}" type="checkbox" />
            % end
            {{ task }}
            <a class="remove" href="/api/delete/{{task.uid}}">X</a>
            <hr/>
            </li>
        % end
        <br/>
        % if tc[1]:
            <p>Всего задач {{tc[0]}}, из которых {{tc[1]}} не выполнено</p>
        % else:
            <p>Всего задач {{tc[0]}}</p>
        % end
        <form id="todo-add" action="/add-task" method="POST">
            <input type="text" name="description" id="new-todo-description"/>
            <button class="add" type="submit">+</button>
        </form>
        % if tc[0] > 9:
            <p>Достигнуто максимальное количество задач (10)</p>
        % end -->
    </div>
    </body>
</html>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>To-Do List</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            background-color: #f4f4f4;
        }
        .container {
            background: white;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            width: 300px;
        }
        input {
            width: 80%;
            padding: 8px;
        }
        button {
            padding: 8px 10px;
            background: blue;
            color: white;
            border: none;
            cursor: pointer;
        }
        ul {
            list-style: none;
            padding: 0;
        }
        li {
            background: #ddd;
            margin: 5px 0;
            padding: 8px;
            display: flex;
            justify-content: space-between;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>To-Do List</h2>
        <input type="text" id="task" placeholder="Add a new task">
        <button onclick="addTask()">Add</button>
        <ul id="taskList"></ul>
    </div>
    <script>
        function addTask() {
            var taskInput = document.getElementById("task");
            var taskValue = taskInput.value.trim();
            if (taskValue === "") return;
            
            var li = document.createElement("li");
            li.innerHTML = taskValue + ' <button onclick="removeTask(this)">X</button>';
            document.getElementById("taskList").appendChild(li);
            taskInput.value = "";
        }
        
        function removeTask(button) {
            button.parentElement.remove();
        }
    </script>
</body>
</html>

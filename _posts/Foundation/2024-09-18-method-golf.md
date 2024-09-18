---
layout: post
title: Method Golf
description: Team Teach 2 Method Game
type: issues 
comments: true
---

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Method Golf</title>
    <style>
        body {
            font-family: Arial, sans-serif;
            text-align: center;
            background-color: #f4f4f4;
        }
        .game-container {
            margin-top: 50px;
        }
        .level-box {
            background-color: #ffffff;
            padding: 20px;
            margin: 20px auto;
            width: 60%;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
        }
        input {
            width: 80%;
            padding: 10px;
            margin: 10px 0;
            font-size: 16px;
        }
        button {
            padding: 10px 20px;
            font-size: 16px;
            cursor: pointer;
        }
        .feedback {
            margin-top: 20px;
            font-weight: bold;
        }
    </style>
</head>
<body>
    <div class="game-container">
        <h1>Method Golf</h1>
        <div id="level-box" class="level-box">
            <h2 id="level-title">Level 1</h2>
            <p id="signature">Signature: <code>int add(int a, int b)</code></p>
            <p id="hint">Call the method with: <code>(1, 2)</code></p>
            <input type="text" id="user-input" placeholder="Enter your function call here">
            <button onclick="checkAnswer()">Submit</button>
            <div id="feedback" class="feedback"></div>
        </div>
    </div>

    <script>
        const levels = [
            {
                signature: "int add(int a, int b)",
                hint: "Call the method with: (1, 2)",
                correctCall: "add(1, 2);"
            },
            {
                signature: "String greet(String name)",
                hint: 'Call the method with: ("Alice")',
                correctCall: 'greet("Alice");'
            },
            {
                signature: "boolean isEven(int number)",
                hint: "Call the method with: (4)",
                correctCall: "isEven(4);"
            },
            {
                signature: "void printMessage(String message)",
                hint: 'Call the method with: ("Hello!")',
                correctCall: 'printMessage("Hello!");'
            },
            {
                signature: "double multiply(double x, double y)",
                hint: "Call the method with: (2.5, 3.0)",
                correctCall: "multiply(2.5, 3.0);"
            },
            {
                signature: "char firstLetter(String word)",
                hint: 'Call the method with: ("Golf")',
                correctCall: 'firstLetter("Golf");'
            }
        ];

        let currentLevel = 0;

        function loadLevel() {
            const level = levels[currentLevel];
            document.getElementById('level-title').textContent = `Level ${currentLevel + 1}`;
            document.getElementById('signature').innerHTML = `Signature: <code>${level.signature}</code>`;
            document.getElementById('hint').innerHTML = level.hint;
            document.getElementById('user-input').value = '';
            document.getElementById('feedback').textContent = '';
        }

        function checkAnswer() {
            const userInput = document.getElementById('user-input').value.trim();
            const correctCall = levels[currentLevel].correctCall;

            if (userInput === correctCall) {
                document.getElementById('feedback').textContent = 'Correct! Hole in one!';
                currentLevel++;
                if (currentLevel < levels.length) {
                    setTimeout(loadLevel, 1000); // load next level after 1 second
                } else {
                    document.getElementById('feedback').textContent = 'Congratulations! You completed all levels!';
                }
            } else {
                document.getElementById('feedback').textContent = 'Incorrect! Try again.';
            }
        }

        window.onload = loadLevel;
    </script>
</body>
</html>

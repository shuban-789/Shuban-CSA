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
        .game-container {
            background-color: #fff;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            border-radius: 10px;
            width: 400px;
            text-align: center;
        }
        h1 {
            font-size: 2em;
            margin-bottom: 20px;
            color: #2c3e50;
        }
        h2 {
            font-size: 1.5em;
            margin-bottom: 15px;
            color: #3498db;
        }
        p {
            font-size: 1.1em;
            margin-bottom: 15px;
            color: #34495e;
        }
        input {
            width: calc(100% - 20px);
            padding: 10px;
            font-size: 1em;
            border: 2px solid #3498db;
            border-radius: 5px;
            margin-bottom: 20px;
            outline: none;
            transition: border-color 0.3s;
        }
        input:focus {
            border-color: #2980b9;
        }
        button {
            background-color: #3498db;
            color: white;
            padding: 10px 20px;
            font-size: 1em;
            border: none;
            border-radius: 5px;
            cursor: pointer;
            transition: background-color 0.3s;
        }
        button:hover {
            background-color: #2980b9;
        }
        .feedback {
            font-size: 1.2em;
            font-weight: bold;
            color: #e74c3c;
            margin-top: 15px;
        }
        .correct {
            color: #2ecc71;
        }
        .hidden {
            visibility: hidden;
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
            <div id="feedback" class="feedback hidden"></div>
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
            document.getElementById('feedback').classList.add('hidden');
        }

        function checkAnswer() {
            const userInput = document.getElementById('user-input').value.trim();
            const correctCall = levels[currentLevel].correctCall;

            const feedbackEl = document.getElementById('feedback');
            if (userInput === correctCall) {
                feedbackEl.textContent = 'Correct! Hole in one!';
                feedbackEl.classList.remove('hidden', 'feedback');
                feedbackEl.classList.add('correct');
                currentLevel++;
                if (currentLevel < levels.length) {
                    setTimeout(loadLevel, 1000); // load next level after 1 second
                } else {
                    feedbackEl.textContent = 'Congratulations! You completed all levels!';
                }
            } else {
                feedbackEl.textContent = 'Incorrect! Try again.';
                feedbackEl.classList.remove('hidden', 'correct');
                feedbackEl.classList.add('feedback');
            }
        }

        window.onload = loadLevel;
    </script>
</body>
</html>

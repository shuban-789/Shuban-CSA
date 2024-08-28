---
layout: base
title: Student Home 
description: Home Page
hide: true
---

# Hi, I'm Shuban 👋

<p> Some of my interests include cybersecurity, computer science, and math. I am fluent in Python, Go, and C. Some of my hobbies are playing video games, coding, and robotics. 

<br>

<p>One of my coolest projects: <br>

Bluefox Remote Access Tool <br></p>
<a href="https://github.com/shuban-789/bluefox" target="_blank"><img src="assets/images/download.svg" width="450"></a>
<br>


<br>

<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Number Guessing Game</title>
<style>
    body {
        font-family: Arial, sans-serif;
        text-align: center;
        padding-top: 50px;
    }
    input[type="number"] {
        width: 50px;
        font-size: 16px;
    }
    button {
        font-size: 16px;
        padding: 5px 10px;
    }
    .result {
        margin-top: 20px;
        font-size: 18px;
        font-weight: bold;
    }
</style>
<p>I'm thinking of a number between 1 and 100. Can you guess it?</p>
<input type="number" id="guessInput" min="1" max="100" placeholder="Enter a number">
<button onclick="checkGuess()">Guess</button>
<div class="result" id="result"></div>

<script>
    let secretNumber = Math.floor(Math.random() * 100) + 1;
    let attempts = 0;

    function checkGuess() {
        let userGuess = parseInt(document.getElementById('guessInput').value);
        let result = document.getElementById('result');
        attempts++;

        if (isNaN(userGuess) || userGuess < 1 || userGuess > 100) {
            result.textContent = "Please enter a valid number between 1 and 100.";
            return;
        }

        if (userGuess === secretNumber) {
                result.textContent = `Congratulations! You guessed it in ${attempts} attempts.`;
        } else if (userGuess < secretNumber) {
                result.textContent = "Too low! Try again.";
        } else {
            result.textContent = "Too high! Try again.";
        }
    }
</script>
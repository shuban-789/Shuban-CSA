---
layout: base
title: Shuban CSA Home
description: Main hub for Shuban's CSA notebook
hide: true
---

# Hi, I'm Shuban 👋

<h2 style="text-align: left;">Interests</h2>
<p style="text-align: left;"> - 🤖 Robotics<p>
<p style="text-align: left;"> - 🔐 Cybersecurity<p>
<p style="text-align: left;"> - 🖥️ Socket Programming<p>
<p style="text-align: left;"> - 💥 Binary Exploitation<p>
<p style="text-align: left;"> - 🪐Simulations<p>

<div style="text-align: left;">

<h2>Projects</h2>

<p>One of my coolest projects: Bluefox Remote Access Tool <br>

<a href="https://github.com/shuban-789/maglev" target="_blank"><img src="assets/images/download.svg" width="450"></a>
<br>

<h2>Game</h2>

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
        background-color: #0f162b;
        color: #23d2ee;
        width: 132px;
        font-size: 16px;
        border-radius: 10px;
        height: 32px;
        text-align: center;
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
    .input-box {
        width: 500px;  /* Automatic width */
        min-width: 200px; /* Minimum width */
        height: 22px;  /* Fixed height */
        background-color: #0f162b;
        color: #23d2ee;
    }
</style>
<p>I'm thinking of a number between 1 and 100. Can you guess it?</p>
<input type="number" id="guessInput" min="1" max="100" placeholder="#" width="400px">
<button onclick="checkGuess()" type="button" class="button">Guess</button>
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
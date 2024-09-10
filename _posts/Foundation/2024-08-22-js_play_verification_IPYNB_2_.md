---
layout: post
title: Tools - JavaScript Play
description: JavaScript Tool Verification
type: issues
comments: True
---

# JS play

All of the JS techniques are implemented on the main webpage. This notebook only stores the code.


```python
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
```

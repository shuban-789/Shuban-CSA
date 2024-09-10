---
layout: page
title: About Me
permalink: /about/
comments: true
---

![about-gallery](image-2.png)

## My Interests

- ⌨️ Coding
- 🤖 Robotics
- 🔐 Cybersecurity
- 🎮 Gaming

## My Computer Science Backgrounds

<img align="center" src="https://go-skill-icons.vercel.app/api/icons?i=py,go,c,rust,java,docker,nginx,vscode,goland,androidstudio,bash,linux,aws,pytorch,tensorflow" />

## 🌏 My Cultural Background

- 2nd generation Indian American
- I have lived in San Diego all my life
- My favorite Indian dish is butter paneer with garlic naan

![naan-paneer](image-3.png)

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Shuban's Quiz</title>
</head>
<body>
    <h1>📝 Shuban's "About Me" Quiz</h1>
    <section>
        <form id="quizForm">
            <h3>1️⃣ What is Shuban's favorite Indian dish?</h3>
            <input type="radio" name="q1" value="wrong1"> Garlic Naan and Butter Chicken<br>
            <input type="radio" name="q1" value="wrong2"> Lemon Rice<br>
            <input type="radio" name="q1" value="correct"> Garlic Naan and Butter Paneer<br>
            <input type="radio" name="q1" value="wrong3"> Samosa<br>

            <h3>2️⃣ What ethnicity is Shuban?</h3>
            <input type="radio" name="q2" value="wrong1"> 1st Generation Italian American<br>
            <input type="radio" name="q2" value="wrong2"> 1st Generation Indian American<br>
            <input type="radio" name="q2" value="correct"> 2nd Generation Indian American<br>
            <input type="radio" name="q2" value="wrong3"> 2nd Generation Japanese American<br>

            <h3>3️⃣ What is not a language which Shuban knows?</h3>
            <input type="radio" name="q3" value="correct"> C++<br>
            <input type="radio" name="q3" value="wrong1"> Python<br>
            <input type="radio" name="q3" value="wrong2"> Go<br>
            <input type="radio" name="q3" value="wrong3"> C<br>

            <h3>4️⃣ What is one game Shuban plays on Nintendo Switch?</h3>
            <input type="radio" name="q4" value="wrong1"> Zelda: Breath of the Wild<br>
            <input type="radio" name="q4" value="wrong2"> Animal Crossing<br>
            <input type="radio" name="q4" value="correct"> Mario Odyssey<br>
            <input type="radio" name="q4" value="wrong3"> Mario Kart 8 Deluxe<br><br>

            <button type="button" onclick="checkAnswers()" type="button" class="button">Submit</button>
        </form>

        <p id="result"></p>
    </section>

    <script>
        function checkAnswers() {
            let score = 0;
            const q1 = document.querySelector('input[name="q1"]:checked');
            const q2 = document.querySelector('input[name="q2"]:checked');
            const q3 = document.querySelector('input[name="q3"]:checked');
            const q4 = document.querySelector('input[name="q4"]:checked');

            if (q1 && q1.value === "correct") score++;
            if (q2 && q2.value === "correct") score++;
            if (q3 && q3.value === "correct") score++;
            if (q4 && q4.value === "correct") score++;

            document.getElementById("result").innerText = "Your score: " + score + "/4";
        }
    </script>
</body>
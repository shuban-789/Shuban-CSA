---
layout: post
title: Trimester 1 - Sprint 2 Review Ticket
description: Review Ticket for Sprint 2
type: issues
comments: True
---

# Sprint 2 Review Ticket

## The Beginning

My main goal for this lesson was to improve my soft skills through the way that I presented topics to my class.

I always think of the battle between soft skills and technical skills like Steve Jobs vs Steve Wozniak. But which mentality to follow?

The answer was both. I believe this trimester I already had the qualities of Steve Wozniak as early this year and this summer I was advancing my Java knowledge.

This sprint, my goal was to unlock my inner Steve Jobs.

![image](https://github.com/user-attachments/assets/b7f98c12-1ffc-413b-85e1-0e64ba9c0aa5)

## Section 1: Lesson Review

For this sprint 2 unit, my team and I taught Unit 2 of CollegeBoard's AP Computer Science A course. In this Unit I made the section which tought Non-Void methods and method signatures. One highlihgt from my lesson was my development of the method golf game.

<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Method Golf</title>
    <style>
        .game-container {
            background-color: #000000;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            padding: 30px;
            border-radius: 10px;
            width: 400px;
            text-align: center;
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

This game consisted of 6 levels and was used as one of the mini games with the basketball idea to create a fun experience for the class. I also used the Rubiks cube to further my explanations

My thought process:
1. 🕹️ Turn the lesson into a game
2. 🔢 Use extremes to emphasize key points (e.g. If you don't learn methods you will get a 1)
3. 📱 Use an example the audience can visualize

Some potential improvements as discussed with Mr. M:
1. ❓ Maybe apply a better analogy for static vs reference methods
2. 👋 Be more open to the class. Go around and start getting involved in conversations with people if they need help
3. 💻 Make sure to maybe cut down on some unnecessary bits and not go in depth


## Section 2: Grading Review

In terms of grading, this was my team's philisophy:

```
4+ -> 0.95 -> above and beyond (rare)
4 -> 0.9 -> meets expectations
3 -> 0.85 -> missing some things
2 -> 0.75 (?) -> missing lots of things
1 -> 0.55 -> incomplete/didn't do it
```

In terms of what would impress us, my team was transparent in the sense that we would give extra points based on originality, effort, and output. This was all done while making sure that the average is intact to prevent grade inflation.

## Section 3: Homework and Understanding Review

In terms of my homework, these are somethings I did well but some things I could also improve upon

✅ Went Great:
1. 🅰️ I scored 0.97 on 2 homeworks (highest in period 3). Everytime I go back to review the comments and it turns out that graders were impressed when I showed them something visually appealing which showed effort and was original
2. 🤚 I engaged in all of the lessons and contributed to my team during jeopardies. As someone on the front lines, I won most of the team teach games!


❌ Could Improve Upon:
1. 🙁 I submitted one homework late! What is the point of putitng in so much effort if what I submitted got late credit??
2. 🙁 For the last two hacks, I forgot to make a sort of section menu on my homework page. I just don't think it would be fair for graders to have to hunt through 1 student's homework

### Unit Takeaways:

- Unit 1 (Datatypes, the Stack and the Heap):
    1. Primitive datatypes specify size and information
    2. The `ints` are stored from -2,147,483,648 to 2,147,483,647. `doubles` can store up to 15 digits
    3. Reference types refer to objects instead of storing them as datatypes
    4. The stack is used to store temporary variables (using push and pop), the heap stores via allocation and is used to store things like reference types
- Unit 2 (Classes and Methods):
    1. Classes are a way to encapsulate methods
    2. Classes can also be used as objects
    3. There are different settings you can give a method using signatures
    4. Wrapper classes are used to extend functionality of primitive classes
- Unit 3 (Booleans): 
    1. Booleans are used to control the flow of logic
    2. Boolean datatype is true and false
    3. DeMorgan's law of negation states that A and B is the same as not A or not B
- Unit 4 (Iteration):
    1. You can iterate through an array forward using `(int i=0; i < array.length; i++)`
    2. You can iterate through an array forward using `(int i=array.length; i < 0; i--)`
- Unit 5 (Writing Classes):
    1. Classes can be used to store methods or manupulate them
    2. When writing a class, you may use constructors
    3. Utilizing getter and setter methods is ideal for changing and monitoring objects
- Unit 6 (Arrays): 
    1. An array of ints can be sorted, searching too can be employed
    2. Some key algorithms are binary search and selection sort
- Unit 7 (Arraylists):
    1. ArrayLists in Java automatically resize when elements are added or removed.
    2. They maintain the order of elements as they were inserted.
- Unit 8 (2D Arrays):
    1. 2D arrays can be treated like matrices
    2. Nexted for loops can be used to iterate through them
    3. Images can be made using all of these 2D Arrays.
- Unit 9 (Inheritance):
    1. In a super class, another child class can be declared
    2. The child can inherit traits and attributes from the super class


### Favorite Memory from Homework: The Spinning Donut 🍩

I created a Java implementation of a spinnign donut animation! It must be run on a java file because the output is updated in real time to create the effect.

![image](https://github.com/user-attachments/assets/d67b543f-f1b0-45d9-be44-39689117e9fa)

Inspired by `donut.c` and an article about how it works

https://www.a1k0n.net/2011/07/20/donut-math.html

```java
import java.util.Arrays;

final int screen_size = 40;
final double theta_spacing = 0.07;
final double phi_spacing = 0.02;
final char[] illumination = { '.', ',', '-', '~', ':', ';', '=', '!', '*', '#', '$', '@' };

double A = 1;
double B = 1;
final double R1 = 1;
final double R2 = 2;
final double K2 = 5;
final double K1 = screen_size * K2 * 3 / (8 * (R1 + R2));

char[][] renderFrame(double A, double B) {
    double cos_A = Math.cos(A);
    double sin_A = Math.sin(A);
    double cos_B = Math.cos(B);
    double sin_B = Math.sin(B);

    char[][] output = new char[screen_size][screen_size];
    double[][] zbuffer = new double[screen_size][screen_size];
    for (char[] row : output) Arrays.fill(row, ' ');
    for (double[] row : zbuffer) Arrays.fill(row, 0);

    double[] cos_phi = new double[315];
    double[] sin_phi = new double[315];
    for (int i = 0; i < cos_phi.length; i++) {
        double phi = i * phi_spacing;
        cos_phi[i] = Math.cos(phi);
        sin_phi[i] = Math.sin(phi);
    }

    double[] cos_theta = new double[90];
    double[] sin_theta = new double[90];
    for (int i = 0; i < cos_theta.length; i++) {
        double theta = i * theta_spacing;
        cos_theta[i] = Math.cos(theta);
        sin_theta[i] = Math.sin(theta);
    }

    double[] circle_x = new double[90];
    double[] circle_y = new double[90];
    for (int i = 0; i < 90; i++) {
        circle_x[i] = R2 + R1 * cos_theta[i];
        circle_y[i] = R1 * sin_theta[i];
    }

    for (int i = 0; i < 90; i++) {
        for (int j = 0; j < 315; j++) {
            double x = cos_B * cos_phi[j] + sin_A * sin_B * sin_phi[j];
            double y = sin_B * cos_phi[j] - sin_A * cos_B * sin_phi[j];
            double z = K2 + cos_A * sin_phi[j];
            double ooz = 1 / z;

            int xp = (int) (screen_size / 2 + K1 * ooz * (x - circle_y[i] * cos_A * sin_B));
            int yp = (int) (screen_size / 2 - K1 * ooz * (y + circle_y[i] * cos_A * cos_B));

            double L = ((cos_phi[j] * cos_theta[i] * sin_B) - cos_A * sin_phi[j] * cos_theta[i] - sin_A * sin_theta[i]) + cos_B * (cos_A * sin_theta[i] - sin_phi[j] * cos_theta[i] * sin_A);
            int L_val = (int) Math.round(L * 8);

            if (L_val >= 0 && ooz > zbuffer[xp][yp]) {
                zbuffer[xp][yp] = ooz;
                output[xp][yp] = illumination[L_val % illumination.length];
            }
        }
    }

    return output;
}

void pprint(char[][] array) {
    for (char[] row : array) {
        for (char c : row) {
            System.out.print(c);
        }
        System.out.println();
    }
}

long startTime = System.currentTimeMillis();
final int duration = 10000;
A = 1;
B = 1;

while (System.currentTimeMillis() - startTime < duration) {
    A += theta_spacing;
    B += phi_spacing;
    System.out.print("\033[H");
    char[][] frame = renderFrame(A, B);
    pprint(frame);
    Thread.sleep(30);
}
```

![image](https://github.com/user-attachments/assets/806f1184-0722-4989-97d1-86cc7846ebf0)

## Lesson Building

| **Assignment**             | **Points**    | **Grade** | **Evidence** |
|----------------------------|---------------|-----------|--------------|
| Pull Request (Integration) | 2             |  1.8        | ![image](https://github.com/user-attachments/assets/ea5f32fc-4e06-48cb-9d41-e01d6e8efc23) |
| Relevancy Checklist (Peer) | 2             |  Avg = 80/90 --> 1.78/2         | A link to the relevancy peer reviewed checklists. They are posted as utterances: https://shuban-789.github.io/Shuban-CSA/2024/09/12/Unit_2_part2_IPYNB_2_.html ![image](https://github.com/user-attachments/assets/dc57143c-50f0-4b4b-a871-778e142189ee) |
| Lesson (Group)             | 1             | 0.93         | A link to my group's lesson on the portfolio_2025 page: https://nighthawkcoders.github.io/portfolio_2025/csa/unit2/period3/home/  ![image](https://github.com/user-attachments/assets/39aae90a-d9fa-47af-b44e-4d7756c71917)           |
| Homework, Popcorn Hacks    | 1 x 7  (excluding unit 2, my unit)       |  0.91+0.97+0.9738+0.85+0.9+0.91+0.9         | https://docs.google.com/spreadsheets/d/1sGQtZm9GI2Rze5F7Eh_P1CMNO8Fyag4bCtOT0ddARmc/edit?gid=0#gid=0 (Link to all homework grades, each grade is on the spreadsheet) ![image](https://github.com/user-attachments/assets/66ecf6b8-3d59-4606-af1d-5041a6e7aca2) |
| Individual Contribution    | 1             |  1         |  My commits on the Team Teach repository: https://github.com/Crusaders-of-FreeBSD/CoFBSD-Team-Teaches/commits/main?author=shuban-789 ![image](https://github.com/user-attachments/assets/e9fb26bb-ad0c-4028-84fd-b5076c92a971)           |
| Personal Notebooks / Blogs | 1             |  0.94         | A link to my unit summary, my blog also includes all of my homeworks: https://shuban-789.github.io/Shuban-CSA/2024/10/09/sprint2_ticket_IPYNB_2_.html  ![image](https://github.com/user-attachments/assets/53201591-c3ba-4833-ab4d-b7dd9931d972)           |
| Total                      | 14            | 12.8638          |  Sum of the scores above       |


| **Skill**                  | **Points**    | **Grade** | **Evidence** |
|----------------------------|---------------|-----------|--------------|
| Work Habits (Analytics)    |   1           | 1         |  A picture of my CSA github analytics: ![image](https://github.com/user-attachments/assets/f9f00c19-c1b7-4dd3-8fdd-540759f9c099)| 
| Team Planning (Issue)      |   1           | 0.92         | A picture of my team's KanBan. As you can see I taught the sections about Non-Void Methods and Method Signatures: ![image](https://github.com/user-attachments/assets/063fae10-7ded-488e-a11e-fe0ff2bd6e28)|
| Presentation Memories      |   1           | 0.93          | ![image](https://github.com/user-attachments/assets/3f70be2a-cd8b-4214-94ba-3cd862d05e55) |
| Grading and Feedback       |   1           | 0.93          |  ![image](https://github.com/user-attachments/assets/74abc92e-2a3c-4086-b290-244d1ee12b54) https://nitinsandiego.github.io/NitinBstudent_2025/csa/unit6/review-ticket          |
| Beyond Perfunctory         |   1           | 0.95         | ![image](https://github.com/user-attachments/assets/f8c9ba30-42a6-4b2e-a29a-e11c33fd578c) |
| Total                      |   5           | 4.73          | Sum of scores above             |

## Relevancy (Self Grade)

| **Assignment**          | **Weightage** | **Grade** | **Comments** |
|-------------------------|---------------|-----------|--------------|
| College Board Coverage  | 20            | 19       | Everything I did in this unit was to make sure students had full collegeboard coverage. I made sure to add some aspects outside of collegeboard. What would make this perfect would be something which could cover more Java in less words          |
| Java Examples           | 30            | 28       | My examples were better than the collegeboard examples but that is a pretty low bar. I could most definitely have made some better examples. My Rubiks cube example was good at first, but as Mr. M said it was confusing when used to explain reference methods         |
| Popcorn Hack Usage      | 10            | 8      | Method Gold was fun, although I do admit that I could have added more popcorn hacks and interactive hacks for the class          |
| Homework                | 10            | 8       | The Homework was method golf. Again this was the minimum bar.          |
| Grading Plan            | 10            | 9.4       | The grading plan was carefully crafted using a formula. It did not copy Mr. M although it did make sure to avoid grade inflation while making a just and fun system          |
| Original an Creative    | 10            | 9.4       | I don't think anyone in the class had a game such as method golf or a game such as the basketball game for our unit which incorporated Java tasks and activities to the lesson. It helped with engagement a Lot.          |
| Total                  | **90**        | 81.8          |  Overall, I think I tried very hard in this team teach to improve in terms of soft skills and putting my voice out there. I could have still improved in terms of engagement but other than that, I feel like I saw a lot of improvement.            |

## Closing Remarks

Overall, I feel like this Sprint 1 was very challenging for me in the sense that I knew I had to improve on soft skills. I tried to do this by talking to the class as I would explain Java to a friend as opposed to how I would explain Java in a job interview. 

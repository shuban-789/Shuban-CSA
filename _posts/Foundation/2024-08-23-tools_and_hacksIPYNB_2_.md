---
layout: post
title: Tools - Review 1
description: Review 1 Final
type: issues 
comments: true
---

# Tools and Installation Hack

### Shell Commands

During the installation procedure on my machine, I used various shell commands through the Terminal to manage files, install software, and configure settings:

1. **WSL (Windows Subsystem for Linux)**: Used to run a Linux distribution on a Windows machine. It allows the execution of Linux shell commands within a Windows environment.
2. **cd**: Changes the current directory in the terminal. This command is essential for navigating through the file system.
3. **git**: A version control system used to clone repositories from GitHub, commit changes, push updates, and manage branches.
4. **apt**: A package manager used in Debian-based Linux distributions to install, update, and manage software packages.
5. **brew**: A package manager for macOS (and Linux) that simplifies the installation of software.

### Version Control

In the development process, version control is crucial for managing changes to code over time. During the setup process, I learned the following:

- **How files from GitHub are placed on the local machine**: Files are typically cloned from a GitHub repository using the `git clone` command. This command creates a local copy of the repository on the machine.
- **Navigating to these files**: After cloning the repository, you can use the `cd` command to navigate into the directory containing the files.
- **Updating files in GitHub**: Files are updated in GitHub by committing changes to the local repository and then pushing those commits to the remote repository using `git commit` and `git push`.
- **Navigating to updated files**: Navigate to the directory where the repository is cloned. Pull updates using `git pull` to ensure the local copy is up-to-date with the remote repository.
- **Updating the template of the `portfolio_2025` repository**: To update the template, you would first fetch the latest changes from the original repository (if it's a fork) using `git fetch upstream`. Then, merge those changes into your branch using `git merge upstream/main`. Customize the template by editing files to better suit your course requirements.

### Localhost vs. Deployed Server

When comparing GitHub Pages running on your localhost machine versus a deployed server, there are key differences:

- **Localhost**: The localhost is your local machine's server environment. It allows you to preview changes in real-time before deployment. The URL typically looks like `http://localhost:8000` or similar, depending on your setup. Only you can see this version as it's running locally on your computer.
- **Deployed Server**: A deployed server, such as GitHub Pages, hosts your site publicly. The GitHub Pages URL might look like `https://username.github.io/repository-name`. This URL is accessible to anyone on the internet, making your site publicly visible.

### DNS and GitHub Pages

DNS (Domain Name System) is the internet's address manager, translating domain names into IP addresses. 

- **Domain on GitHub Pages**: You can set up a custom domain for your GitHub Pages site, replacing the default `github.io` URL.
- **URL Differences**: The URL for your GitHub Pages will be different from your neighbors’ URLs because each repository has a unique name and each GitHub user has a unique username. You can change the URL by setting a custom domain in your repository's settings.


# Tools and Verification Hack

## Importance of Tools


Tools in computer science are essential for enhancing productivity, efficiency, and the quality of work. They provide programmers with the necessary resources to write, test, debug, and maintain code more effectively. Integrated Development Environments (IDEs), version control systems, and automated testing frameworks are just a few examples of tools that streamline the development process. These tools help reduce errors, manage large codebases, and collaborate with team members. Moreover, they allow developers to focus on solving complex problems rather than getting bogged down by repetitive tasks, ultimately fostering innovation and accelerating technological advancements.

## Installation Shell Script

I wrote a shell script for my Installation hack. By verifying all of the commands and their versions I can verify whether that software exists or not.

```
#!/bin/bash
echo "=== Python3 Verification ==="
echo "PYTHON: $(python3 --version)"
echo ""
echo "=== Pip3 Verification ==="
echo "PIP3: $(pip3 --version)"
echo ""
echo "=== GitHub Verification ==="
echo "GIT: $(git --version)"
git config --list
echo ""
echo "=== Docker Verification ==="
echo "DOCKER: $(docker --version)"
echo "" 
echo "=== Ruby Verification ==="
echo "RUBY: $(ruby --version)"
echo ""
echo "=== APT Verification ==="
echo "APT: $(apt --version)"
echo ""
echo "=== Gem and Bundle Verification ==="
echo "GEM: $(gem --version)"
echo "BUNDLE: $(bundle --version)"
echo ""
```

## Python Play and Verification Hack

# Tools and Python Play

This hack post is for the proof of python tools and equipment on my machine, including a working jupyter notebook is a modular kernel which I can switch between `venv` and native `python3` kernels in.

This is a more advanced version of the hack which was asked on the python play page. Most importantly though, it showcases a working venv.


```python
# Hack 1: The Magic Emoji Machine
# Description: Emoji formatting BUT with a twist...
# Author: Shuban Pal
# Showcase: ord() and chr() ASCII functions in order to represent emojis into the next emoji in their ASCII set

values = []

menus = ["=== Magic Emoji Machine ===", "=== Magic Emoji Machine: INPUT ===", "=== Magic Emoji Machine: OUTPUT ==="]

magic_function = lambda char: chr(ord(char) + 1)

print(menus[0])
print("")
print("Input - A set of emojis")
print("Output - The next emoji in the ASCII set")
print('Exit - Type "exit" now to exit the program')
print("")
inp = str(input(f"Enter a set of emojis: "))
if (inp == "exit") or (inp == "Exit"):
    exit()
elif len(values) >= 1:
    for i in inp:
        values.append(i)
else:
    pass
    
print(menus[1])
if (len(values) == 0):
    print("No emojis entered. Sample set will be used.")
    values = ["🚀","🔴","🧀","💻","😺","👍","🤓"]
for i in values:
    print(f"{i} = {ord(i)}")
print(menus[2])
for i in values:
    print(f"{i} = {ord(i)} -> {magic_function(i)} = {ord(magic_function(i))}")

```

    === Magic Emoji Machine ===
    
    Input - A set of emojis
    Output - The next emoji in the ASCII set
    Exit - Type "exit" now to exit the program
    
    === Magic Emoji Machine: INPUT ===
    No emojis entered. Sample set will be used.
    🚀 = 128640
    🔴 = 128308
    🧀 = 129472
    💻 = 128187
    😺 = 128570
    👍 = 128077
    🤓 = 129299
    === Magic Emoji Machine: OUTPUT ===
    🚀 = 128640 -> 🚁 = 128641
    🔴 = 128308 -> 🔵 = 128309
    🧀 = 129472 -> 🧁 = 129473
    💻 = 128187 -> 💼 = 128188
    😺 = 128570 -> 😻 = 128571
    👍 = 128077 -> 👎 = 128078
    🤓 = 129299 -> 🤔 = 129300




This code is a showcase of the python version and the source code for the base64 pytohn import.


```python
# Hack 2: Print the code for libraries
# Description: Library code printer
# Author: Shuban Pal
# Showcase: Inspection of the base64 library

import os

LIBRARY = "base64"

print(f"=== Library Code Printer ===")
os.system("cat /usr/lib/python3.10/base64.py")
os.system("python3 --version")
```

This code also reveals the python executable location


```python
#!pip install newspaper3k
from IPython.display import display, Markdown


url = ["https://blog.prepscholar.com/how-to-get-800-on-sat-reading-10-strategies-by-a-perfect-scorer"]
os.system("which python3")

from newspaper import Article

# Download and parse the article
article = Article(url)
article.download()
article.parse()

# Get the article text
article_text = article.text

# Define keywords to search for
keywords = ["SAT", "reading", "strategies", "perfect scorer", "score", "tips"]

# Search for keywords in the article text
found_keywords = {keyword: article_text.lower().count(keyword.lower()) for keyword in keywords}

# Display the results
display(Markdown(f"**Found Keywords in the Article:**\n\n" + "\n".join([f"- **{keyword}**: {count}" for keyword, count in found_keywords.items()])))




```

# Tools and JS Play

I made a simple number guessing game on my index page.

```js
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


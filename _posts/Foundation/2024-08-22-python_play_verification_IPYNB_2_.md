
---
layout: post
title: Tools - Python and Venv
description: Python and Venv
type: issues
comments: True
---

# Tools and Python Play

This hack post is for the proof of python tools and equipment on my machine, including a working jupyter notebook is a modular kernel which I can switch between `venv` and native `python3` kernels in.

# Hack 1: Showcase of Venv

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


# Hack 2: Showcase of Python version and base64 import reveal

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

# Hack 3: Showcase of the article scraping software

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

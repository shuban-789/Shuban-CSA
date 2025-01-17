---
layout: post
title: Classes
description: Team Teach for Classes
permalink: /classesprompt
comments: True
menu: nav/FRQ_teach/classesperiod3.html
sticky_rank: 1
toc: False
---

## Prompt:
![Prompt]({{site.baseurl}}/images/signs.png)

The prompt describes a Sign class with a constructor that takes a message (string) and a width (integer) as parameters. The class includes two methods:

numberOfLines: Returns the number of lines required to display the message.
getLines: Returns the message split into lines separated by semicolons  or null if the message is empty.


# Classes: **Class Headers**, **Constuctors**, and **Instance Variables** (Trystan)

## Class headers
The Class header is the class declaration. This declaration should be public unless the question states otherwise. The 2023 and 2024 scoring guides marks down the declaration if it is anything other than public.

- "Declares class header: ```class Sign```. Responses will **not** earn the point if they
• declare the class as **something other than public**" ([2023 FRQ Scoring Guide](https://apcentral.collegeboard.org/media/pdf/ap23-sg-computer-science-a.pdf), [2024 FRQ Scoring Guide](https://apcentral.collegeboard.org/media/pdf/ap24-sg-computer-science-a.pdf)).

### General Formatting for the Class Header
This should be pretty straight forward:
``` public class ClassNameHere```

### Inheritance and Implementation
- If you are *inheriting* classes you must **extends** the **parent class**.
- If you are *structuring* classes with interfaces you must **implements** the **interface**.
- read [this article](https://techdifferences.com/difference-between-interface-and-inheritance.html) if you want more info.

## Constuctor
The Constuctor is used to initalize the Instance Variables in your class. The Scoping of the constuctor **must** mach the Scoping of the Class header, *usually public*. You are allowed to calcuate and store values that your methods will return as long as the parameter types are correct.

### Constuctor header
- **must** match the scoping of the Class Header, *ususally public*
- if the question tells you to create a constuctors with certain parameters, just do it
- Formatted as ```public ClassNameHere(ParamType ParamName, ...)```

### Initalizing Instance Variables
- instance variables must be initalized from withing the header.
- you may calculate and store values as long as they can still answer all the questions. *(see the [2023 FRQ Scoring Guide](https://apcentral.collegeboard.org/media/pdf/ap23-sg-computer-science-a.pdf))*
- generally Formatted as 
``` 
public ClassNameHere(ParamType ParamName){
    this.ParameterInstanceName = ParamName;
}
```

## Instance Variables
These are the variables stored within the class for use in methods. They are initalized by the Constructor. Must be **private** and contained withing the class.

- "Declares appropriate ```private``` instance variable(s) **and** constructor initializes instance variables using appropriate parameters. Responses **will not** earn the point if they • declare the variable **outside the class**, or in the class **within a method or constructor**" - ([2023 FRQ Scoring Guide](https://apcentral.collegeboard.org/media/pdf/ap23-sg-computer-science-a.pdf))
- Do not make the instance variables static.
- Formatted as ```private VariableType VariableName;```

## 2023 FRQ
```
public class Sign
{
    private String message;
    private int width;
    public Sign(String m, int w)
    {
        message = m;
        width = w;
    }
```
- **Class header**: ```public Class Sign```
- **Instance Variables**: ```private String message;``` and ```private int width;```
- **Constuctor header**: ```public Book(String m, int w)```
- **Initialize Instance Variables**: ```messages = m;``` and ```width = w```



----------

## Popcorn Hack
We are creating a new Class called **Cat**. The cat class will have the Instance variable of **sound** which is a **String**. The Constructor should have the parameter **noise** of type **String** which should be used to initalize the instance variable of sound.

### Create the Class Header, the Constuctor, and the Instance Variables.

----------

# **Adding Methods** (Trystan)

## Method headers
The methods that are needed are generally given withing the question. When declaring methods that will accessed outside of the class, they should be public. If the question asks you to create a method with a certain name, create that method.

- "Declares method headers: ```public int numberOfLines()``` and ```public String getLines()```. Responses will not earn the point if they • omit either method • omit public or declare the method as something other than public" - ([2023 FRQ Scoring Guide](https://apcentral.collegeboard.org/media/pdf/ap23-sg-computer-science-a.pdf))
- Formatted as ```public ReturnType MethodName(ParamType ParamName, ...)```
- If the method doesn't return anything, the return type is **void**

## Method content
The content of the method should match what the method is named. Generally the questions will tell you what a method should be doing/returning, and you need to create the content yourself.
The Content **must** return the same type as the Method header.

- This is where usually around half of the question is weighted, the class skeleton is the other half.

### Tips
- Watch for **null** cases, they are ususally easy to implement and give some free points.
- If you don't know exactly what to do, try to think of what steps get you closer to a solution.
- Finally, don't stress too much on one question. Get the easy points then come back to the question later.

## 2023 FRQ
```
public int numberOfLines()
{
 int len = message.length();
 if (len % width == 0)
    {
        return len / width;
    }
    else
    {
        return len / width + 1;
    }
}
public String getLines()
{
    int linesNeeded = numberOfLines();
    if (linesNeeded == 0)
    {
        return null;
    }

    String signLines = "";
    for (int i = 1; i < linesNeeded; i++)
    {
        signLines += message.substring((i – 1) * width, i * width) + ";";
    }
    return signLines + message.substring((linesNeeded – 1) * width);
}
```

### The Easy Points
- **Method headers**: ```public int numberOfLines()``` and ```public String getLines()```
- **Null Case**: if the lines needed is 0, that is to say if the message is empty or null, or something else went wrong, return null

### The Harder Points
- **NumberOfLines()**
    - every path returns an int
    - first major step: you will need the length of the message, so use the *message.length()* to find it
    - from there you have some options College Board decided if there was any remaining characters after each line is split at the width. If there was, they returned 1 extra line, otherwise they returned the number of characters devided by the line length.
- **getLines()**
    - every path returns a String, *(in this case null is a string without a memory address)*
    - first they check for the null case
    - next they created an empty string to build onto
    - third they created a for loop with steps equalivant to the number of lines
    - at each step in the for loop, they concatenate the **signLines** with the substring of the line and a semicolon to signify the end of the line.
    - finally, after the for loop, they concatenate the **signLines** with the remaining characters in the message.

--------

## Popcorn Hack (Jason)
The Cat class has 2 methods. The first method **makeQuietNoise** should return a fully lowercase string of the *noise instance variable*. The second method **makeReverseNoise** should return the *noise instance variable* but the order of the characters is reversed. These methods should return **null** if there is an empty string.

### Create the 2 methods within the Cat class. Write out the full cat class.

--------


```python

```

Here is an image to summarize everything in the last 2 sections:

![classStructures]({{site.baseurl}}/images/classStructures.png)

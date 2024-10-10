---
layout: post
title: Unit 2 — String Objects
description: An explanation of how String objects work.
type: collab
toc: True
permalink: /csa/unit2/period3/part3/
menu: nav/CSA_Units/unit2/period3.html
comments: True
author: Aadit Mathur, Eric Yu, Shuban Pal, Rahul Verma
---

# String Objects - Concatenation, Literals, and More

## Creating Strings:


```Java
public class StringObjects
{
    public static void main(String[] args)
    {
        String name1 = "Skibidi";
        String name2 = new String("Sigma");
        String name3 = new String(name1);

        System.out.println(name1);
        System.out.println(name2);
        System.out.println(name3);
    }
}

StringObjects.main(null);
```

---

## 📝 Three Ways to Create a String: Let's Break it Down!

---

#### **First Option:**



```Java
String name1 = "Skibidi";
```

This method of creating a string consists of the following three parts: 

1. <span style="color:orange;">Class Name —</span> Defines the type of variable (String, Integer, Array, etc.)

2. <span style="color:orange;">Variable Name —</span> The name assigned to the variable. This is how the variable will be referenced in the rest of the program. 

3. <span style="color:orange;">String Value —</span> The actual value you'd like to assign to the variable

---

### **Second Option:**


```Java
String name2 = new String("Sigma");
```


This method is similar to option one but consists of a few extra components (indicated in pink coloring below):

1. <span style="color:orange;">Class Name —</span> Again, defines the type of the variable (String, Integers, Arrays, etc.)

2. <span style="color:orange;"> Variable Name —</span> How the variable will be referenced in the rest of the program

3. <span style="color:pink;">new — </span> A Java keyword which is used to explicitly instantiate a new object.

4. <span style="color:pink;">Class Name (Part 2) —</span> The 'new' key word must be followed with the class name of the object being created (in this case, String)

5. <span style="color:orange;">String Value —</span> The actual value you'd like to assign to this variable


---

### **Third Option:**


```Java
String string1 = "YIPEE"
String name2 = new String(string1);
```

Finally, a string can be created using the value of another, existing string object. The components needed for this declaration are as follows:

1. <span style="color:orange;">Class Name —</span> Again, type of variable will it be? (String, Integers, Arrays, etc.)

2. <span style="color:orange;">Variable Name —</span> The name of the variable

3. <span style="color:orange;">Java Keyword 'new' —</span> The new keyword in Java is used to explicitly create a new object.

4. <span style="color:orange;">Class Name (Part 2) —</span> As indicated before, the new keyword has to be followed with the class name of the object being created.

5. <span style="color:pink;">Variable Name (Part 2) —</span> The name of the variable whose value you want the new variable to take on. 


**Importantly**, regardless of which creation method you choose, String objects are immutable. This means that every time you attempt to change the value of some string variable, under the hood, a *new* string object is created with the updated value, and your variable name is used to reference this new object.

## 📝 What is concatentation?

Concatenation allows you to add strings together.

There are two primary ways to combine strings. Assume `a`, `b`, and `c` are previously created string variables. 

- `a += b` : Appends the string value stored in `b` to the string value stored in `a`. In the processs, `a` is redefined to equal this newly appended string. 
- `c = a + b` : Joins the string values of `a` and `b` together, but doesn't redefine either `a` or `b`. Instead, the resultant value is assigned to `c`. 


```Java
public class Concatentations
{
    public static void main(String[] args)
    {
        String name1 = "Skibidi";
        String name2 = new String("Sigma");
        String name3 = new String(name1);

        int number1 = 1;
        int number2 = 2;
        String combine = name1 + "" + number1;
        name1 += number2; 

        System.out.println(name1); 
        System.out.println(combine);
    }
}

Concatentations.main(null);
```

Let's do an exercise for practice! What will the following code segment print?


```Java
public class Concatentations
{
    public static void main(String[] args)
    {
        String name1 = "Skibidi";
        String name2 = new String("Sigma");
        String name3 = new String(name1);

        name1 += "!!"
        String mystery = name1 + name2 + name3

        System.out.println(mystery);
    }
}

// Uncomment the following method call to run the code and check your answer!
// Concatentations.main(null);
```

## 📝 Backwards and Forwards Slashes

In Java, there are a few characters with pre-assigned purposes. Backwards and forwards slashes are such characters, and they can be easy to mix up, so it's important to pay close attention to them!

`\`: Starts escape sequences. In other words, it can allow you to add special characters to your string.
`/`: Usually used as a division operator. Two forward slashes indicate the beginning of a comment.


### Backslashes

`\"` = "Escapes" the quote, allowing for you to have quotes within a string without ending the string

`\\` = Indicates a literal backslash in the string.

`\n` = A newline character




```Java
public class SlashDemo {
    public static void main(String[] args) {
        // Using backslashes for escape sequences:
        System.out.println("This is a double quote: \"");  // Prints a double quote
        System.out.println("This is a backslash: \\");     // Prints a backslash
        System.out.println("This prints on a new line:\nSecond line starts here");

        // Using forward slashes for division and comments:
        int a = 10;
        int b = 2;
        int result = a / b; // Division operation

        System.out.println("Result of 10 / 2 is: " + result); // Prints the result of the division
    }
}

SlashDemo.main(null)
```

## 📝 String methods
The following are some important methods that can be used on String objects. 

| Method                                  | Description                                                                                             |
|-----------------------------------------|---------------------------------------------------------------------------------------------------------|
| `String(String str)`                    | Creates a new `String` object with the same sequence of characters as the specified string `str`                |
| `int length()`                          | The number of characters in the `String` object                                                    |
| `String substring(int from, int to)`    | Returns the substring beginning at index from and ending at index to - 1. In other words, the start is inclusive and the end is exclusive. |
| `String substring(int from)`            | Returns `substring(from, length())`                                                                      |
| `int indexOf(String str)`               | Returns the index of the first occurrence of `str`; returns `-1` if not found                            |
| `boolean equals(String other)`          | Returns `true` if the calling string is equal to `other`; returns `false` otherwise                                    |
| `int compareTo(String other)`           | Returns a value < 0 if the calling string is alphanumerically less than other; returns 0 if it is equal to other; returns a value > 0 if it is alphanumerically greater than other. |




```Java
public class StringMethodDemo {
    public static void main(String[] args) {
        String wordOfDay = new String("Skibidi");

        System.out.print("Characters in the word 'Skibidi' — ");
        System.out.println(wordOfDay.length());

        System.out.println("\nThis should return -1, since there is no n in the string");
        System.out.println(wordOfDay.lastIndexOf("n"));

        System.out.println("\nThis should display the index of d (5)");
        System.out.println(wordOfDay.lastIndexOf("d"));
        
        // NOTE: Start is inclusive, end is exclusive
        System.out.println("\nThis should display the letters between the 2nd and 6th");
        System.out.println(word.substring(2,6));
    }
}

StringMethodDemo.main(null)
```

**Brief Aside**: Substring, like python slicing has the first index be inclusive and the last one be exclusive.

<img src="https://i.postimg.cc/ZRr8yZBG/substring.png" alt="substring" width="40%"/>

Quick, let's do an exercise for practice! What will the following code segment return?


```Java
public class SubstringOfDemo {
    public static void main(String[] args) {
        String word = new String("skibidi");

        System.out.println("\nWhat is printed if we only pass one parameter into the substring method?");
        System.out.println(word.substring(2));
    }
}

// Uncomment the following method call to run the code and check your answer!
// SubstringOfDemo.main(null)
```


```Java
public class CompareToDemo {
    public static void main(String[] args) {
        String word = new String("skibidi");
        String word2 = new String("skibidi1");
        String word3 = new String("skibidi");

        System.out.println("\nIf word is < word2, a negative value will be printed. If they are equal, 0 will be printed, and if word > word2, a positive value is printed");
        System.out.println(word.compareTo(word2));

        System.out.println("\nComparison between word and word3");
        System.out.println(word.compareTo(word3));
    }
}

CompareToDemo.main(null)
```


```Java
public class EqualToDemo {
    public static void main(String[] args) {
        String word = new String("skibidi");
        String word2 = new String("skibidi1");
        String word3 = new String("skibidi");

        System.out.println("\nThis displays if word1 = word2, if false it returns false, if true it returns true");
        System.out.println(word.equals((word2)));

        System.out.println("\nThis displays if word1 = word3, if false it returns false, if true it returns true");
        System.out.println(word.equals((word3)));
    }
}

EqualToDemo.main(null)
```

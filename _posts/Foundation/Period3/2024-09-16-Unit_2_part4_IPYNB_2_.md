---
layout: post
title: Unit 2 — Wrapper Classes & Math Module
description: An introduction to what wrapper classes and the Math module are.
type: collab
toc: True
permalink: /csa/unit2/period3/part4/
menu: nav/CSA_Units/unit2/period3.html
comments: True
author: Aadit Mathur, Eric Yu, Shuban Pal, Rahul Verma
---

# Lesson 2.8: Wrapper Classes! 🍫

## Introduction

By now, you should be used to working with different variables and data types in Java. Some of you may have asked a question regarding why the data type String has a capital S, while int is not capitalized.

The answer is: String is a reference type, while int is a primitive type.

Primitive types are the mosic basic data types in Java, and they always represent single values. On the other hand, Reference types are used to store objects and can have a variety of things stored.

## Important Wrapper Classes 🔢🔠
- `Integer` for `int`
- `Double` for `double`

These classes are part of the `java.lang` package, so you don't need to import them explicitly. Additionally, there are more wrapper classes, but these are the two that are required by College Board.

But let's back off real quick. What is a Wrapper class?

Answer: A wrapper class allows you to use primitive data types.

### Integer Wrapper Class 🔢
The `Integer` class wraps a value of the primitive type `int` in an object.

<img src="https://i.postimg.cc/T2kXtVN1/Screenshot-2024-09-24-002821.png" alt="intmeme" width="50%"/>

#### Methods & Constants
1. Constructor: `Integer (int value)`: Constructs a new `Integer` object representing the specified `int` value.
2. `Integer.MIN_VALUE` and `Integer.MAX_VALUE` returns the minimum/maximum value  that an `int` can hold. Going beyound these borders will lead to overflow.
3. `int intValue()`: Returns the value of the `Integer` as an `int`

Let's take a look at an example:



```java
public class Main {
    public static void main(String[] args){
        Integer num1 = new Integer(5);  // Constructor usage 

        System.out.println("num1 = " + num1);
        System.out.println("num2 = " + num2);
        System.out.println("Maximum value of Integer: " + Integer.MAX_VALUE);
        System.out.println("Minimum value of Integer: " + Integer.MIN_VALUE);
        System.out.println("num1 as int: " + num1.intValue());
    }
}
```

### Double Wrapper Class 📦

The `Double` class wraps a value of the primitive type `double` in an object.

#### Important Methods
1. Constructor: `Double(double value)`: Constructs a new `Double` object representing the specified `double` value.
2. `double doubleValue()`: Returns the value of the `Double` as a `double`

Let's take a look at another example.


```java
public class Main {
    public static void main(String[] args){
        Double pi = new Double(3.14159); 
        Double e = Double.valueOf(2.71828);

        System.out.println("pi = " + pi);
        System.out.println("e = " + e);
        System.out.println("pi as double: " + pi.doubleValue());
    }
}
```

## Autoboxing and Unboxing

Java gives you automatic conversion between primitive types and their respective wrapper classes

- Autoboxing: Primitive Value ➡️ Wrapper Object
- Unboxing: Wrapper object ➡️ Primitive Value

![model](https://i.postimg.cc/tgH0s2JS/Screenshot-2024-09-24-002832.png)

Let's take a look at a short example.


```java
public class BoxDemo {
    public static void demo(String[] args) {
        Integer wrapped = 100;  // Autoboxing
        int unwrapped = wrapped;  // Unboxing

        System.out.println("📦wrapped = " + wrapped);
        System.out.println("unwrapped = " + unwrapped);
    }
}

BoxDemo.demo(new String[]{});
```

# Practice Exercises

Fix the code below!


```java
public class Main {
    public static void main(String[] args) {
        integer num1 = 50;
        Integer num2 = new Integer(75);
        
        Double d1 = 3.14;
        double d2 = new Double(2.718);
        
        System.out.println("Sum of integers: " + (num1 + num2));
        System.out.println("Product of doubles: " + (d1 * d2));
    }
}
```

Now, complete the exercise below without any extra help.


```java
public class Main {
    public static void main(String[] args) {
        // TODO: Create an Integer object using autoboxing
        
        // TODO: Create a double primitive from a Double object (unboxing)
        
        // TODO: Print both values
    }
}
```

# 2.9: Using the Math Module 📝

Have you ever been stuck in your Calculus or Physics class because your calculator died?

<img src="https://i.postimg.cc/KzJCsbNw/Screenshot-2024-09-24-002841.png" alt="mathmeme" width="55%"/>

You can use the Java math module to help you 😁!

## Introduction
The Java math module is a package that comes with `java.lang.Math`. All it's methods are static.

This is more straightforward than wrapper classes, but still important to know.

## Useful Methods
1. `static int abs(int x)`: Returns the absolute value of an `int`
2. `static double abs(double x)`: Returns the absolute value of a `double`
3. `static double pow(double base, double exponent)`: Returns the value of the first value raised to the power of the second value
4. `static double sqrt(double x)`: Returns the (positive) square root of a double value
5. `static double random()`: Returns a `double` greater than or equal to 0.0 and less than 1.0

Let's take a look at a code example using all of these!


```java
public class Main {
    public static void main(String[] args) {
        // abs() method for int and double
        int intNumber = -5;
        double doubleNumber = -10.5;
        System.out.println("Absolute value of " + intNumber + " is: " + Math.abs(intNumber));
        System.out.println("Absolute value of " + doubleNumber + " is: " + Math.abs(doubleNumber));

        // pow() method
        double base = 2.0;
        double exponent = 3.0;
        System.out.println(base + " raised to the power of " + exponent + " is: " + Math.pow(base, exponent));

        // sqrt() method
        double number = 16.0;
        System.out.println("Square root of " + number + " is: " + Math.sqrt(number));

        // random() method
        System.out.println("A random number between 0.0 and 1.0: " + Math.random());
    }
}
```

## PRACTICE

Let's try a practice! Fill in the function below, `randomize`, following the steps below:

1. Take the absolute value of both numbers
2. Return a random number in between those two numbers, inclusive


```java
import java.util.*;
public class Main {
    public double randomize(double a, double b){
        // TODO: Enter code here! Don't forget a return statement
    }
    public static void main(String[] args) {
       Scanner scan = new Scanner(System.in);
       double a = scan.nextDouble();
       double b = scan.nextDouble();

       System.out.println(randomize(a, b));
    }
}

// The error will be returned below in the code cell
```

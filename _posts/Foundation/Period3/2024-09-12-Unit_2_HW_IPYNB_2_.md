---
layout: post
title: Unit 2 — Recap & Homework
description: A recap of everything we covered today.
type: collab
toc: True
permalink: /csa/unit2/period3/homework/
menu: nav/CSA_Units/unit2/period3.html
comments: True
author: Aadit Mathur, Eric Yu, Shuban Pal, Rahul Verma
---

# Homework
Now, it's time to practice! The following problem will incorporate the following concepts:
- Classes
    - Constructors
- Methods
    - Void methods
    - Non-void methods
- Math class
- `Integer` and `Double` wrapper classes
- String methods


```java
public class Circle {
    // 1. Class variable: radius (double)

    // 2. Make a constructor that takes in the radius as a parameter, and sets the radius property

    // 3. cirumference() method: Calculate and return the circumference

    // 4. area() method: Calculate and return the area, use Math.pow()
}

public class Student {
    // 1. Class variables: name (String) and grade (Integer)

    // 2. Constructor to initialize name and grade

    // 3. nameLength() method: Return the length of the student's name

    // 4. getGradeAsDouble() method: Return the grade as the Double wrapper type

    // 5. getScaledGrade() method: Return grade divided by 2
}

public class Main {
    public static void main(String[] args) {
        // Testing the Circle class
        Circle circle1 = new Circle(5.0);
        Circle circle2 = new Circle(7.0);

        System.out.println("Circle 1:");
        System.out.println("Radius: " + circle1.radius);
        System.out.println("Circumference: " + circle1.circumference());
        System.out.println("Area: " + circle1.area());

        System.out.println("\nCircle 2:");
        System.out.println("Radius: " + circle2.radius);
        System.out.println("Circumference: " + circle2.circumference());
        System.out.println("Area: " + circle2.area());

        // Testing the Student class
        Student student1 = new Student("Aadit", 75);
        Student student2 = new Student("Emily", 45);

        System.out.println("\nStudent 1:");
        System.out.println("Name: " + student1.name);
        System.out.println("Name Length: " + student1.nameLength());
        System.out.println("Grade: " + student1.getGradeAsDouble());
        System.out.println("Scaled Grade: " + student1.getScaledGrade());

        System.out.println("\nStudent 2:");
        System.out.println("Name: " + student2.name);
        System.out.println("Name Length: " + student2.nameLength());
        System.out.println("Grade: " + student2.getGradeAsDouble());
        System.out.println("Scaled Grade: " + student2.getScaledGrade());
    }
}
```

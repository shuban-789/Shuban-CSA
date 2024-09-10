---
layout: post
toc: True
title: Unit 1 - Primitive & Reference Types Examples
description: Primitive & Reference Types Examples
authors: Aniket Chakradeo, Soham Kamat
menu: nav/CSA_Units/csa_unit1.html
type: ccc
permalink: /unit1lessonexamples
---

## Primitive Data Types
In your personal blog you should have a comprehensive example that help you recall Primitive Data Types.


```Java
public class PrimitiveTypesDemo {
    public static void main(String[] args) {
        // Declare and initialize variables of different primitive types
        byte myByte = 10; // 8-bit integer
        short myShort = 32000; // 16-bit integer
        int myInt = 123456; // 32-bit integer
        long myLong = 123456789L; // 64-bit integer

        float myFloat = 3.14f; // 32-bit floating-point
        double myDouble = 3.14159; // 64-bit floating-point

        char myChar = 'A'; // 16-bit Unicode character
        boolean myBoolean = true; // true or false

        // Perform some operations
        int sum = myInt + 1000;
        float division = myFloat / 2;
        boolean isEqual = myByte == 10;

        // Print the results
        System.out.println("Byte value: " + myByte);
        System.out.println("Short value: " + myShort);
        System.out.println("Int value: " + myInt);
        System.out.println("Long value: " + myLong);
        System.out.println("Float value: " + myFloat);
        System.out.println("Double value: " + myDouble);
        System.out.println("Char value: " + myChar);
        System.out.println("Boolean value: " + myBoolean);

        System.out.println("Sum of myInt and 1000: " + sum);
        System.out.println("Division of myFloat by 2: " + division);
        System.out.println("Is myByte equal to 10? " + isEqual);
    }
}

PrimitiveTypesDemo.main(null);
```

## Refrence Types Examples
In your Personal Blog you should create a class that captures key reference type in Java.   In fact, there is at least one common reference type we will be testing on in AP CSA that is not represented below.


```Java
class Person {
    // Fields (attributes) of the Person class
    String name;
    int age;

    // Constructor to initialize the Person object
    Person(String name, int age) {
        this.name = name;
        this.age = age;
    }

    // Method to introduce the person
    void introduce() {
        System.out.println("Hello, my name is " + name + " and I am " + age + " years old.");
    }

    // Method to simulate having a birthday
    void haveBirthday() {
        age++;
        System.out.println("Happy Birthday! I am now " + age + " years old.");
    }
}
```


```Java
public class ReferenceTypesDemo {
    public static void main(String[] args) {
        // Create an instance of the Person class (a custom reference type)
        Person person = new Person("John", 25);

        // Call methods on the Person object
        person.introduce();
        person.haveBirthday();

        // Create and initialize an array of integers
        int[] numbers = {1, 2, 3, 4, 5};

        // Print the contents of the integer array
        System.out.println("Array contents:");
        for (int number : numbers) {
            System.out.println(number);
        }

        // Create and initialize a 2D array of strings
        String[][] matrix = {
            {"A1", "B1", "C1"},
            {"A2", "B2", "C2"},
            {"A3", "B3", "C3"}
        };

        // Print the contents of the 2D string array
        System.out.println("2D array contents:");
        for (int i = 0; i < matrix.length; i++) {
            for (int j = 0; j < matrix[i].length; j++) {
                System.out.print(matrix[i][j] + " ");
            }
            System.out.println();
        }
    }
}



ReferenceTypesDemo.main(null);
```

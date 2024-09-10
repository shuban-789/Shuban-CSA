---
layout: post
toc: True
title: Unit 1 - Reference Types
description: An overview of Reference Types
menu: nav/CSA_Units/csa_unit1.html
authors: Aniket Chakradeo, Soham Kamat
permalink: /csa/unit1/reference
---

## Refrence Types

Reference types in Java include classes, arrays, and interfaces. Unlike primitive types, reference types store addresses (references) to objects rather than the objects themselves.

### Classes
- Create complex data structures by grouping variables and methods.

Example:
```java
class Person {
    String name;
    int age;
}
Person person = new Person(); // `person` reference in stack, `Person` object in heap
```
### Arrays
- Collections of variables of the same type.

Example:
```java
int[] numbers = new int[5]; // `numbers` reference in stack, array in heap
```

### Popcorn Hack


```java
public class Main {
    public static void main(String[] args) {
        // Create a reference type variable of type String
        String myString = "Hello, World!";
        
        // Create a reference type variable of type Array
        Array<int> myArray = new int[] {1, 2, 3, 4, 5};

        // Print the values
        System.out.println(myString);
        System.out.println(Arrays.toString(myArray));
    }
}

Main.main(null);
```

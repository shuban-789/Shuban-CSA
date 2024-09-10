---
layout: post
title: Quiz Questions for APCSA Unit 1
description: Questions and Code Cells for the Quiz on Unit 1
categories: ['CSA-Quiz']
permalink: /csa/units/quiz1
menu: nav/CSA_Units/csa_unit1.html
author: Soham Kamat & Aniket Chakradeo
---

## Unit 1: Primitive Types

### Question 1

Which of the following is a valid declaration of a variable of type int in Java?<br>
a) int 123variable;<br>
b) int variable123;<br>
c) int variable#123;<br>
d) int variable 123;

Answer: b) int variable123;



```java
// Q1 Hack: Define variables according to Java naming conventions.
// For instance, is it snake_case, camelCase, or PascalCase?

int variable123 = 123;
System.out.println(variable123);
```

### Question 2

What is the value of the following expression in Java: 5 / 2?<br>
a) 2.5<br>
b) 3<br>
c) 2<br>
d) 2.0

Answer: c) 2



```java
// Q2.1 Hack: Show in code difference between integer and floating point division.
// Q2.2 Hack: Show in code the differnt number types in Java and how they behave.
// Behave means definition and assignment.
```

### Question 3

Which primitive type is used to represent a single character in Java?<br>
a) char<br>
b) String<br>
c) int<br>
d) byte

Answer: a) char


```java
// Q3.1 Hack: Show in code all the the non-number Java primitive data types and how they behave.
// Q3.2 Hack: Show in code the String data type and how it behaves.
```

### Question 4

Answer the following questions based on the code cell:
* a) What kind of types are person1 and person2? 
* Answer: 
* b) Do person1 and person3 point to the same value in memory?
* Answer:
* c) Is the integer "number" stored in the heap or in the stack?
* Answer:
* d) Is the value that "person1" points to stored in the heap or in the stack?
* Answer: 


```java
public class Person {
    String name;
    int age;
    int height;
    String job;

    public Person(String name, int age, int height, String job) {
        this.name = name;
        this.age = age;
        this.height = height;
        this.job = job;
    }
}

public static void main(String[] args) {
    Person person1 = new Person("Carl", 25, 165, "Construction Worker");
    Person person2 = new Person("Adam", 29, 160, "Truck Driver");
    Person person3 = person1;
    int number = 16;
    System.out.println(number);
}
main(null); // This is required in Jupiter Notebook to run the main method.
```

### Question 5 

(a) Define primitive types and reference types in Java. The application is for banking, where you need to represent customer information.

(b) Add comments for primitive types and reference types. In terms of memory allocation, discuss concepts like instance, stack, and heap where it adds value.

(c) To assist in requirements, here are some required elements:
- Create multiple customers from the `public class Account`.
- Consider key class variables that a Bank may require: `name`, `balance`, `accountNumber`.
- Create a two argument constructor using `name` and `balance`.
- Consider in constructor how you will create a unique account number using `static int lastAccountNumber`
- Define a method `calculateInterest` that works with getting and setting `double balance` using `private static double interestRate`.

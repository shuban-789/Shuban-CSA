---
layout: post
toc: True
title: Unit 1 - Primitive Types
categories: ['CSA-Prep']
menu: nav/CSA_Units/csa_unit1.html
authors: Aniket Chakradeo, Soham Kamat
permalink: /csa/unit1/primitives
---

## Primitive Data Types
A primitive data type specifies the **size and type of information**. Primitive types are the simplest type of variables in Java. They simply store a small amount of data, according to the type. They are not associated with a class.

### The 3 Primitive Data Types for College Board

There are eight primitive data types in Java, but only these 3 are used in AP CSA:

| Data Type | Description |
|-|-|
| int | Stores whole numbers from -2,147,483,648 to 2,147,483,647 |
| double | Stores decimal numbers. Sufficient for storing 15 decimal digits |
| boolean | Stores true or false values |

To declare a variable, you write:
`Type VariableName = Value;`

For example:
`int count = 0;`

### Variable Terms and Conventions

These are important items to remember with regards to Java and the College Board.

- A `variable name` is often referred to as the `variable identifier` in Java.
- A `variable name` follows camel case conventions in Java (e.g., firstName).
- A `class name`, which is a Data Type, follows Pascal case (e.g., BankAccount).

## The 8 Primitive Data Types

Here is the complete list of primitive types in Java:

- **byte**: An 8-bit signed two's complement integer.
- **short**: A 16-bit signed two's complement integer.
- **int**: A 32-bit signed two's complement integer.
- **long**: A 64-bit signed two's complement integer.
- **float**: A single-precision 32-bit IEEE 754 floating point.
- **double**: A double-precision 64-bit IEEE 754 floating point.
- **boolean**: Stores either `true` or `false`.
- **char**: Stores a single 16-bit Unicode character.

### Popcorn Hack: Greatest Value Terms

`Primitive Data types have constraints` The program shows the constraints of Integers and Doubles.  Define the following terms...

- **constraints**:
- **overflow**:
- **underflow**


```java
public class GreatestValue {
    public static void main(String[] args) {
        System.out.println("Max Integer: " + Integer.MAX_VALUE);
        System.out.println("Min Integer: " + Integer.MIN_VALUE);
        System.out.println("Max Double: " + Double.MAX_VALUE);
        System.out.println("Min Double: " + Double.MIN_VALUE);

        // Integer Show Overflow
        int i = Integer.MAX_VALUE;
        i++;
        System.out.println("Integer Max + 1, Overflow: " + i);

        // Integer Show Underflow
        int j = Integer.MIN_VALUE;
        j--;
        System.out.println("Integer Min - 1, Underflow: " + j);

        // Integer Max + Min
        int k = Integer.MAX_VALUE + Integer.MIN_VALUE;
        System.out.println("Integer Max + Min: " + k);

    }
}
GreatestValue.main(null);
```

### Popcorn Hack: Fill in Data Type 
The code below is broken....

- Fill in the blank, replace the underbars with the correct type.
- Output the contents to the Jupyter Terminal


```java
___ zero = 0; //Whole number
___ pi = 3.14159; //Decimal values. Floating point numbers.
___ iAmTakingCSA = true; //Stores a true of false binary value
___ myProjectedGrad = 'A'; //Single character
___ iLoveCodeCodeCoding = "Yes"; //String of characters
```

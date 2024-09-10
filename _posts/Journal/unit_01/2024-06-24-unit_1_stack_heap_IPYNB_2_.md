---
layout: post
toc: True
title: Unit 1 - Stack & Heap Memory
description: An overview of stack and heap memory in Java
authors: Aniket Chakradeo, Soham Kamat
menu: nav/CSA_Units/csa_unit1.html
permalink: /csa/unit1/stack_heap
---

## Memory Allocation: Stack and Heap

In Java, memory allocation for variables occurs in two main areas: the stack and the heap.

### Stack Memory

Stack memory is a region of memory that stores temporary variables created by each function (including the main function). It is managed by the execution stack and follows a last-in-first-out (LIFO) order.

- Stores primitive data types and references to objects.
- Memory is allocated in a last-in-first-out (LIFO) manner.
- Each thread has its own stack, ensuring thread safety.

Example:
```java
int number = 100; // Stored in the stack
```


#### Stack Variables Tips

College Board often asks questions about stack usage.

- Since primitives are always on the stack, they point directly to the content. This is best observed in a debugger.
- A reference type contains an address to the content on the stack.
- Passing a stack variable to a method creates a copy of the content of that variable.
- Changes to the content of a primitive type will not return back to the method caller; this is called pass-by-value.
- Since a reference type contains an address to the heap, the reference is copied when calling a method. This is called pass-by-reference, as data type changes are then performed according to the reference.


### Heap Memory

Heap memory is a region of memory used for dynamic memory allocation. It is managed by Java's memory management system.

- Used for storing objects and arrays.
- Shared among all threads, requiring synchronization for thread safety.
- Managed by the garbage collector, which reclaims memory when objects are no longer in use.

Example:
```java
// Long form showing new
String message = new String("Hello");

// Short form Java performs new find the scenes
String message = "Hello";
```

### Heap Variables Tips

- Heap variables stay alive as long as a stack variable points to them.
- By nature, all reference data types refer to an address on the stack but change content on the heap.
- Objects created in the heap are globally accessible and can be shared among multiple methods, this creates concurrency issues when programming.
- The garbage collector automatically reclaims memory from objects that are no longer referenced, helping to prevent memory leaks.

## Popcorn Hack: literal vs input

A value that is directly in code is called a literal.  Often developers will say this value is hard coded value.
- Literal: In source code representation of a fixed value, e.g. 17. A hard coded number.
- String Literal: In sourced code set of letters within quotes, e.g. "blue", A hard coded string.

Q1: Define some literal data.
Q2: Obtain that data from input versus hard coded.


```java
// Hard code literal values

int literalAge = 17;
String literalFavoriteColor = "blue";
```


```java
// Input your age
Scanner scanObj = new Scanner(System.in);  // Create a Scanner object
System.out.println("Enter age");
int inputAge = scanObj.nextInt();  // Read user input
System.out.println("My Age is: " + inputAge);  // Output user input
```

## Popcorn Hack: pass-by-value, pass-by-reference
For College Articulation in Data Structures and College Board AP Exam you will need to understand pass-by-value and pass-br-reference.  

- If you pass primitives to a method they WILL NOT change the callers value.
- If you wrap the primitive in a refrence type, in the example below using a class, then you can change the original.

Q1: Describe approache difference between IntByValue and IntByReference.
Q2: Try to make a changeInt method that change would persist after it is called.  Be careful, this will require a change in approach. 


```java
public class IntByValue {
    
    public static void changeInt(int n) {
        System.out.println("In changeInt method");
        System.out.println("\tBefore n += 10: n = " + n); // prints 5
        n = n += 10;
        System.out.println("\tAfter n += 10: n = " + n); // prints 10
    }

    public static void main(String[] args) {
        int n = 5;
        System.out.println("Main method before changeInt(n): n = " + n); // prints 5
        changeInt(n);
        System.out.println("Main method after changeInt(n): n = " + n); // still prints 5
    }
}
IntByValue.main(null);
```


```java
public class IntByReference {
    private int value;

    public IntByReference(Integer value) {
        this.value = value;
    }

    public String toString() {
        return (String.format("%d", this.value));
    }

    public void swapToLowHighOrder(IntByReference i) {
        if (this.value > i.value) {
            int tmp = this.value;
            this.value = i.value;
            i.value = tmp;
        }
    }

    public static void swapper(int n0, int n1) {
        IntByReference a = new IntByReference(n0);
        IntByReference b = new IntByReference(n1);
        System.out.println("Before: " + a + " " + b);
        a.swapToLowHighOrder(b);  // conditionally build swap method to change values of a, b
        System.out.println("After: " + a + " " + b);
        System.out.println();
    }

    public static void main(String[] ags) {
        IntByReference.swapper(21, 16);
        IntByReference.swapper(16, 21);
        IntByReference.swapper(16, -1);
    }

}
IntByReference.main(null);
```

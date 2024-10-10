---
layout: post
title: Unit 2 — Methods
description: A more in-depth explanation of methods.
type: collab
toc: True
permalink: /csa/unit2/period3/part2/
menu: nav/CSA_Units/unit2/period3.html
comments: True
author: Aadit Mathur, Eric Yu, Shuban Pal, Rahul Verma
---

## Section 2.4: Calling a Void Method with Parameters

### Small Recap: Methods in Python vs Java  



```Java
class Animal:
    def __init__(self, group):
        self.group = group

    def getInfo(self):
        if self.group == "bird":
            print("Birds: Have feathers, lay eggs, (most) can fly.")
        elif self.group == "mammal":
            print("Mammals: Mammals are known for their big brains.")
        elif self.group == "fish":
            print("Fish: Fish have gills to breathe underwater.")
        elif self.group == "reptile":
            print("Reptiles: Reptiles are cold-blooded.")
        elif self.group == "amphibian":
            print("Amphibian: Amphibians are ectothermic.")
        else:
            print("Unknown animal group.")

# Example usage:
shark = Animal(group="fish")
shark.getInfo()
```


```Java
class Animal {
    private String group;

    // Constructor to initialize the group
    public Animal(String group) {
        this.group = group;
    }

    // Method to print group information
    public void getInfo() {
        if (group.equals("bird")) {
            System.out.println("Birds: Have feathers, lay eggs, (most) can fly.");
        } else if (group.equals("mammal")) {
            System.out.println("Mammals: Mammals are known for their big brains.");
        } else if (group.equals("fish")) {
            System.out.println("Fish: Fish have gills to breathe underwater.");
        } else if (group.equals("reptile")) {
            System.out.println("Reptiles: Reptiles are cold-blooded.");
        } else if (group.equals("amphibian")) {
            System.out.println("Amphibians: Amphibians are ectothermic.");
        } else {
            System.out.println("Unknown group.");
        }
    }

    public static void main(String[] args) {
        // Example usage
        Animal shark = new Animal("fish");
        shark.getInfo();
    }
}

```

- Python 🐍: Here, the method is `getInfo()` and it is provided by the `Animal` class. Whenever a new `Animal` class is declared, the `getInfo()` method can be used upon itself to get the info of the new class based on its group.

- Java ☕: Here, the method is also `getInfo()` which is also provided by the animal class. This time, the Animal class can be initialized via `constructors`


### Method Signatures

A method signature is basically the piece of code which lists how the method should act before specific code is given to the method. 

For example, for the `main` function the signature states that the method is a `public` method, the method is a `static` method, the method returns a `void` type, and it takes in the argument `args[]` as a `String` type.



```Java
public class Main {
    public static void main(String args[]) {
        System.out.println("📝 Main method is executed, method has nothing to return.");
    }
}

Main.main(new String[]{});
```

In the code above, the method signature is `public static void main(String args[])` which is the standard way to write main methods in java. Here is an anatomy of each piece:

- `public` ➡️ Make sure the method can be used outside of the `Main` class
- `static` ➡️ Make sure the method is a feature packaged into the class and does not work based off of an instance of that class
- `void` ➡️ The return type. If the method is set to return nothing, void must be the return type.
- `name(type arg1, type argn)` ➡️ The name of the method. **Methods can be named!** The elements listed inside the parentheses next to the name of the method are parameters. They are the values which the method takes in. If the method is set to take no parameters, the parenthesis can be left empty (e.g. `name()`).

<img src="https://i.postimg.cc/kMYrzGW5/java-main-method.png" alt="image" />

- 👁️ Visibility Modifiers: `public` or `private`
- 🔀 Optional: `static` or blank
- 📩 Return Type: `void`, `int`, `char`, `double`, `String`, or any other datatype
- 🔤 Name: Anything!
- 📃 Parameter(s): A list of values that will be passed into the method in `type name` format

### Method Parameters

The Methodical Methods of the Java Method Parameter:
- 1️⃣ RULE 1 - Parameters MUST be passed in order
- 2️⃣ RULE 2 - Parameters MUST be separated by comma
- 3️⃣ RULE 3 - Parameters MUST include a datatype specification and a name
- 3️⃣ RULE 4 - Parameters MUST be referenced by their names inside the method

**🤮🤢🗑️😭1️⃣ BAD 1️⃣😭🗑️🤢🤮**

```java
public static void funny_method(int funny_number, String funny_string) {
    System.out.println(funny_number);
    System.out.println(funny_string);
}

funny_method("cat", 1);
```

<br>
<br>

**🤑💸🪙😎5️⃣ GOOD 5️⃣😎🪙💸🤑**

```java
// Initiate method
public static void funny_method(int funny_number, String funny_string) {
    System.out.println(funny_number);
    System.out.println(funny_string);
}

// Call method
funny_method(1, "cat");
```

### Method Overload

Method overload occurs when a method has the same name but different parameters. 

For method overloading purposes, the method signature does NOT include the return type.

Imagine you have a method called `printTwoNumbers()` and you had 3 implementations of it as shown below.


```Java
public void printTwoNumbers() {
    System.out.println(1);
    System.out.println(1);
}

public void printTwoNumbers(int number) {
    System.out.println(number);
    System.out.println(number);
}

public void printTwoNumbers(int number1, number2) {
    System.out.println(number1);
    System.out.println(number2);
}
```

For each of the 3 method calls below, what would happen?

- Method call 1: `printTwoNumbers(2);`
- Method call 2: `printTwoNumbers();`
- Method call 3: `printTwoNumbers(5, 6);`



```Java
printTwoNumbers(2);
printTwoNumbers();`
printTwoNumbers(5, 6);
```

When `printTwoNumbers(2)` was called, compiler started looking for a signature which had the name `printTwoNumbers` which took 1 parameter and as an int. 

When `printTwoNumbers()` was called, compiler started looking for a signature which had the name `printTwoNumbers` which took no parameters at all. 

When `printTwoNumbers(2)` was called, compiler started looking for a signature which had the name `printTwoNumbers` which took 2 parameter and both as an ints. 

## Section 2.5: Calling a Non-Void

### What is a Non-Void Method?

A non-void method is a method which has a defined return type. This return type is stated in the function's signature. As a recap from earlier, we made a bullet list of every component inside of a method's signature. Here is a recap of the return type segment of a method's signature.

📩 Return Type: `void`, `int`, `char`, `double`, `String`, or any other datatype

Here is a list of signatures. For each signature, you must be able to tell whether the method corresponding to that signature will be a non-void method or not.

1. `public static int function_1(String string)`
2. `private static void function_2(int number)`
3. `public double function_3(int number)`
4. `private void function_4(double funnyDouble)`
5. `private int function_5(double notFunnyDouble)`
6. `public void function_6(char funnyChar)`


```Java
public class MathMachine {
    private static boolean isEven(int num) {
        if (num%2 == 0) {
            return true;
        } else {
            return false;
        }
    }

    public static void getEvenOrOdd(int num) {
        if (isEven(num) == true) {
            System.out.println("Number is even");
        } else {
            System.out.println("Number is odd");
        }
    }
}

MathMachine.getEvenOrOdd(2);
MathMachine.getEvenOrOdd(3);
```

In the example above, the class `isEven` is a Non-Void method while `getEvenOrOdd` is not. 

In a Non-Void method, there is always a type to be returned. This value is essentually what calling the method will equal to based on the parameter it is called upon.

In the case of `isEven`, the return type was a boolean or a datatype which stores either true or false. 

Accordingly, whenever `isEven` was called as a method, its assignment would be to whatever value was returned based on its parameter.

### Calling Non-Void Methods

Calling a Non-Void method is the same as calling a void method, except a return value is produced and assigned to the call. 

Due to this sort of structure, non-void methods are classically used when comparing return values. For example, in the case of `isEven`:

```java
private static boolean isEven(int num) {
    if (num%2 == 0) {
        return true;
    } else {
        return false;
    }
}
```

The return type is a boolean. 

So whenever `isEven(n)` is referenced, where n is an integer, the value of `isEven(n)` gets assigned to either true or false based on the value of n or any underlying logic inside the method. 

That is why in the code below, `isEven(n)` can be compared directly to a tangiable boolean value.

```java
public static void getEvenOrOdd(int num) {
    if (isEven(num) == true) {
        System.out.println("Number is even");
    } else {
        System.out.println("Number is odd");
    }
}
```

## PRACTICE Calling Methods: Method Golf 😋

⛳ Link to Method Golf: https://shuban-789.github.io/Shuban-CSA/2024/09/18/method-golf.html

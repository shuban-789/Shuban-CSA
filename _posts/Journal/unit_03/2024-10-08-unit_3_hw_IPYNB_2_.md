---
layout: post
toc: True
title: Unit 3 - Homework
description: Unit 3 Period 3 Homework
authors: Shuban Pal
---

# Unit 3 Work Debrief (You're Welcome, Graders 🐦)



# 3.1 Hack 1

```java
int myAge = 15;
int otherAge = 45; 
```

1. true
2. true
3. true
4. false
5. false
6. true

# 3.1 Popcorn Hack

When strings are compared, you must use the `.equals()` method and are not allowed to use the arithmetic comparison operators such as `==` and `!=`

# 3.1 Homework Question

Precondition is that num must be on [1,6]


```java
public class CheckDigit {
    public static int getCheck(int num) {
        if ((num >= 1) && (num <= 6)) {
            return 1;
        } else {
            return 0;
        }
    }
}

System.out.println(CheckDigit.getCheck(6));
```

    1


# 3.2 Popcorn Hack

Test case: If the age was stored as a `String` type (e.g. "Sixteen", "Fifteen", etc.) then the comparison checks would no apply. Instead .equals would need to be used. If you were younger it wouldnt print anything about a driving test.

# 3.3 If Else Statements

1. Based on this code, if you were younger than 16 what would it print out?

It would say that I am not old enough to get a license

2. Write your own if else statement

Ok


```java
public class Main {
    public static void print(String message) {
        System.out.println(message);
    }

    public static void main(String args[]) {
        boolean isKSI = false;
        if (isKSI == true) {
            print("💻 From the screen");
            print("🥊 To the ring");
            print("✒️ To the pen");
            print("👑 To the king");
        } else {
            print("\"Thank you. I don't have to print out those horrible lyrics\" ~ Java");
        }
    }
}

Main.main(null)
```

    "Thank you. I don't have to print out those horrible lyrics" ~ Java


# 3.4 Else If Statements

1. It would print out that the user can vote andis too old for a license to drive (how can you be too old to drive?)

2. Nothing would be printed

3. Ok


```java
public class Main {
    public static void print(String message) {
        System.out.println(message);
    }

    public static void main(String args[]) {
        boolean isKSI = false;
        if (isKSI == true) {
            print("💻 From the screen");
            print("🥊 To the ring");
            print("✒️ To the pen");
            print("👑 To the king");
        } else if (isKSI == false) {
            print("\"Thank you. I don't have to print out those horrible lyrics\" ~ Java");
        }
    }
}

Main.main(null)
```

    "Thank you. I don't have to print out those horrible lyrics" ~ Java


# 3.5 Popcorn Hack

This algorithm is designed to determine a user's eligibility for various memberships or discounts based on their age, annual income, and student status. It evaluates these inputs against several conditions. The user qualifies for Basic Membership if they are 18 or older and earn at least 20,000 annually, and for Premium Membership if they are 25 or older with an income of at least 50,000. Additionally, students automatically qualify for a Student Discount, and users aged 65 or older qualify for a Senior Discount. If none of these conditions are met, a default message informs the user that they do not qualify for any memberships or discounts. Given the input of age 20, annual income of 1,500, and student status as "yes," the user does not qualify for any memberships due to low income and age, but they do qualify for the Student Discount. The output in this case would be, "You are eligible for a Student Discount."

# 3.5 Popcorn Hack 2




```java
public class Main {
    public static void main(String[] args) {
        int age = 30;
        boolean isStudent = true;

        if (age >= 65) {
            System.out.println("Eligible for senior discount.");
        } else if (isStudent) {
            System.out.println("Eligible for student discount.");
        } else if (age < 18) {
            System.out.println("Eligible for child discount.");
        } else {
            System.out.println("No discount available.");
        }
    }
}

Main.main(null)
```

    Eligible for student discount.


# 3.6 Popcorn Hack

1. It is `NOT X equals 0` which means it will return true for `x != 0`
2. `!(x < -5 || x > 10)`

# 3.7 Popcorn Hack

In the provided code, you are comparing two House objects, myHouse and sharonsHouse, to check if they are equal. While these objects are created separately, the equals method has been overridden to compare them based on their attributes, specifically their color and size, rather than simply checking if they are the same object in memory. This means that even though myHouse and sharonsHouse are distinct instances, their content is identical because they both have the same color ("green") and size (150). When you call myHouse.equals(sharonsHouse), the overridden method checks if the values of these attributes are the same, and since they are, it returns true. As a result, the comparison considers them equal in terms of their properties, even though they are different objects. This demonstrates how overriding the equals method allows for meaningful content-based comparisons between objects, rather than relying solely on object reference equality.

# Homework

Ok


```java
import java.util.Scanner;

public class PrimeClubMembership {

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter your age: ");
        int age = scanner.nextInt();

        System.out.print("Enter your annual income: ");
        double income = scanner.nextDouble();

        System.out.print("Are you a student? (yes or no): ");
        String studentStatus = scanner.next().trim().toLowerCase();

        System.out.print("Enter your employment type (full-time, part-time, unemployed): ");
        String employmentType = scanner.next().trim().toLowerCase();

        boolean isStudent = studentStatus.equals("yes");
        boolean qualifiesForBasic = age >= 18 && income >= 20000;
        boolean qualifiesForPremium = age >= 25 && income >= 50000;
        boolean qualifiesForSenior = age >= 65;

        boolean hasMembership = false;

        if (qualifiesForPremium) {
            System.out.println("You qualify for the Premium Membership.");
            hasMembership = true;
        }
        if (qualifiesForSenior) {
            System.out.println("You qualify for the Senior Discount.");
            hasMembership = true;
        }
        if (isStudent) {
            System.out.println("You qualify for the Student Discount.");
            hasMembership = true;
        }
        if (qualifiesForBasic) {
            System.out.println("You qualify for the Basic Membership.");
            hasMembership = true;
        }

        if (!hasMembership) {
            System.out.println("You do not qualify for any memberships or discounts.");
        } else {
            System.out.println("Best membership recommendation:");
            if (qualifiesForPremium) {
                System.out.println("Recommended: Premium Membership");
            } else if (qualifiesForSenior) {
                System.out.println("Recommended: Senior Discount");
            } else if (isStudent) {
                System.out.println("Recommended: Student Discount");
            } else if (qualifiesForBasic) {
                System.out.println("Recommended: Basic Membership");
            }
        }

        scanner.close();
    }
}

PrimeClubMembership.main(null)
```

    Enter your age: Enter your annual income: Are you a student? (yes or no): Enter your employment type (full-time, part-time, unemployed): You qualify for the Student Discount.
    Best membership recommendation:
    Recommended: Student Discount


# Something Extra for Extra Points: Fibbonacci Sequence

A fibbonacci sequence is a program which never terminates


```java
public class Fibonacci {

    public static void main(String[] args) {
        int n = 10;  
        System.out.println("Fibonacci of " + n + " is: " + fib(n));
    }

    public static int fib(int n) {
        if (n == 0) {
            return 0;
        } else if (n == 1) {
            return 1;
        } else {
            return fib(n - 1) + fib(n - 2);
        }
    }
}

Fibonacci.main(null)
```

    Fibonacci of 10 is: 55


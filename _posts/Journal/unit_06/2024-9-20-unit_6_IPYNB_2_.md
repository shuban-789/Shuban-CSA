---
layout: post
toc: True
title: Unit 6 - Homework
description: Unit 6 Period 3 Homework
authors: Shuban Pal
---

# 6.1 Array

## Popcorn Hack

Create four new INITIALIZED arrays, with int, string, double, and boolean types respectively. Print out the second element of each array to see the default values.


```java
String[] stringArr = {"A","L","L"," ","R","E","D"};
int[] intArr = {9,3,2,4,2,5,8,4};
double[] doubleArr = {3.14,6.28,6.9,4.5,7.6};
boolean[] boolArr = {true, false, true, true, false, false, true, false, true, false};
System.out.println(stringArr[1]);
System.out.println(intArr[1]);
System.out.println(doubleArr[1]);
System.out.println(boolArr[1]);
```

## Practice MCQs

### Question 1
Consider the following method which is intended to return the position of `find` within the String referenced at the third last index of arr.

```java
public static int findThirdLast(String [] arr, String find) {
    return arr[arr.length - 3].indexOf(find);
}
```

Which of the following could replace `/*missing code*/` to complete the method as specified?
- A. arr[].indexOf(find)
- B. arr.indexOf(find)
- C. arr[arr.length].indexOf(find)
- D. arr[arr.length - 3].indexOf(find)
- E. arr[arr.length - 2].indexOf(find)

Answer is `D`. `arr[arr.length - 1]` references the last element, `arr[arr.length - 2]` references the 2nd to last element. This means that `arr[arr.length - 3]` references the third to last element inside the array. Element's index can be found with indexOf.

### Question 2
Consider the following method:

```java
public static int mystery(int [] arr) {
    return arr[1] + arr[4]/2
}
```

The mystery method is called from another method in the same class: `int[] list = {1,9,2,5,6};`
`int result = mystery(list);`

What is stored in result after executing the above code?

A. 2
B. 12
C. 15
D. 9
E. 8

The answer is `B` which is 12. This is because `arr[4]` is equal to 6, and `arr[1]` is equal to 9, 6/2 is 3, the sum is 12.

## Popcorn Hack

Create an array called “city_array” with the elements “San Diego”, “Los Angeles”, “San Francisco”, “Sacramento”
Print out the first element in the array
Print out the third element in the array
Change the second element in the array to “Sacramento”
Change the fourth element in the array to “San Jose”
Print out the length of the array


```java
String[] city_array = {"San Diego", "Los Angeles", "San Francisco", "Sacramento"};
```


```java
System.out.println(city_array[0]);
```


```java
System.out.println(city_array[2]);
```


```java
System.out.println(city_array[city_array.length - 1]);
```


```java
System.out.println(city_array.length);
```

# 6.2 Traversing

## Popcorn Hack 2
Write a method that traverses an integer array and counts how many times a specific number appears. Make sure to use a for-each loop.


```java
public static int countOccurrences(int[] arr, int target) {
    int result = 0;
    for (int i = 0; i < arr.length; i++) {
        if (arr[i] == target) {
            result += 1;
        } 
    }
    return result;
}

// Example usage:
int[] arr = {1001, 2002, 4005, 5004, 1001, 3002, 2003, 4004, 5005, 1001, 6006, 3007, 7003, 1001, 4007};
int target = 1001;
System.out.println(countOccurrences(arr, target));
```

## Popcorn Hack 3
Write a method that traverses an array of integers and returns the index of the first negative number. If there are no negative numbers, return -1. Use a while loop.


```java
public static int firstNegativeIndex(int[] arr) {
    int i = 0;
    while (i < arr.length) {
        if (arr[i] < 0) {
            return i;
        } else {
            i++;
        }
    }
    return -1;
}

// Example usage:
int[] arr = {4, 7, -2, 5};
System.out.println(firstNegativeIndex(arr)); // Output: 2
```

## Homework Hack
Problem Statement: Given an array of integers, write a method to find the second largest unique element in the array. If the array has fewer than two distinct elements, return -1.


```java
import java.util.Arrays;

public static int findSecondLargest(int[] arr) {
    int[] uniqueNumbers = {};
    for (int i = 0; i < arr.length; i++) {
        int instances = 0;
        for (int j = 0; j < arr.length; j++) {
            if (arr[j] == arr[i]) {
                instances++;
            }
        }
        if (instances == 1) {
            uniqueNumbers[uniqueNumbers.length-1] = arr[i];
        }
    }
    Arrays.sort(uniqueNumbers);
    return arr[arr.length-2];
}

public static void main(String[] args) {
    int[] arr1 = {3, 1, 4, 1, 5, 9, 2, 6};
    System.out.println(findSecondLargest(arr1)); // Output: 6

    int[] arr2 = {10, 10, 10, 10};
    System.out.println(findSecondLargest(arr2)); // Output: -1
}

Main.main(null)
```

# 6.3 Lesson

## Hacks

Build the loop
Multiple Choice
Find each index of the letter ‘a’ in each word
Find the error
HW Hack


```java
String[] myArray = {'Add an array here'};

// Add a loop to go through the array here (Shuban: OK? I'll do that in the next cell)
```


```java
private String[] myArray = {
    "And", "Table", "Shirts", "Tea", "School Day"
};

for (String currentWord : myArray) {
    System.out.println(currentWord.length());
}
```


```java
String[] fruits = {"Apple", "Banana", "Orange"};

for (String fruit: fruits) {
    for (int index = 0; index < fruit.length(); index++) {
        if (fruit.toLowerCase().charAt(index) == 'a') {
            System.out.println("Letter A spotted at index " + index);
        }
    }
}
```


```java
String[] myArray = {"Object 1", "Object 2", "Object 3", "Object 4", "Object 5"};

for (String currentWord: myArray) {
    System.out.println(currentWord);
}
```

## Final Hack
Add to the code below to create a average grade calculator (using an enhanced for loop)


```java
Integer[] grades = {88, 93, 55, 68, 77};

Scanner userGrades = new Scanner(System.in);
System.out.print("Enter a grade: ");
int grade = Integer.parseInt(userGrades.nextLine());
System.out.println("");

double sum = 0;
for (int g : grades) { sum += g; }
sum += grade; 
double average = sum / (grades.length + 1);
System.out.println(average);

grades = Arrays.copyOf(grades, grades.length + 1);
grades[grades.length - 1] = grade;
System.out.println(Arrays.toString(grades));
```

# 6.4 Algos

## Popcorn Hack
If an integer in the array is greater than the integer below it, print “Increase”


```java
public class MaxMinInArray {

    public static void findMaxAndMin(int[] array) {
       
        if (array == null || array.length == 0) {
            System.out.println("Array is empty");
            return;
        }

        int max = array[0];
        int min = array[0];

        for (int i = 1; i < array.length; i++) {
            // Check for maximum and minimum
            if (array[i] > max) {
                max = array[i];  
            }
            if (array[i] < min) {
                min = array[i];  
            }
            
            // Popcorn Hack: Check if current element is greater than the previous one
            if (i > 0 && array[i] > array[i - 1]) {
                System.out.println("Increase");
            }
        }

        System.out.println("Maximum value: " + max);
        System.out.println("Minimum value: " + min);
    }

    public static void main(String[] args) {
     
        int[] array = {3, 5, 7, 2, 8, -1, 4, 0, 12};

        findMaxAndMin(array);
    }
}
```

## HW Hack
Go through the array in reverse order and output each object


```java
Integer[] myArray = {0, 1, 2, 3, 4, 5};

for (int i = myArray.length-1; i > 0; i--) {
    System.out.println(myArray[i]);
};
```

## HW Hack
Print words while skipping every other word (“Alpha”, “Gamma”, “Beta”, “Delta”)


```java
public class WordShifter {  
    public static void main(String[] args) {
        String[] words = {"alpha", "beta", "gamma", "delta"};
        for (int i = 0; i < words.length; i += 2) {
            System.out.println(words[i]);
        }
        for (int i = 1; i < words.length; i += 2) {
            System.out.println(words[i]);
        }
    }
}
WordShifter.main(null)
```

# Extra: Spinning Donut Implementation in Java


```java
import java.util.Arrays;

final int screen_size = 40;
final double theta_spacing = 0.07;
final double phi_spacing = 0.02;
final char[] illumination = { '.', ',', '-', '~', ':', ';', '=', '!', '*', '#', '$', '@' };

double A = 1;
double B = 1;
final double R1 = 1;
final double R2 = 2;
final double K2 = 5;
final double K1 = screen_size * K2 * 3 / (8 * (R1 + R2));

char[][] renderFrame(double A, double B) {
    double cos_A = Math.cos(A);
    double sin_A = Math.sin(A);
    double cos_B = Math.cos(B);
    double sin_B = Math.sin(B);

    char[][] output = new char[screen_size][screen_size];
    double[][] zbuffer = new double[screen_size][screen_size];
    for (char[] row : output) Arrays.fill(row, ' ');
    for (double[] row : zbuffer) Arrays.fill(row, 0);

    double[] cos_phi = new double[315];
    double[] sin_phi = new double[315];
    for (int i = 0; i < cos_phi.length; i++) {
        double phi = i * phi_spacing;
        cos_phi[i] = Math.cos(phi);
        sin_phi[i] = Math.sin(phi);
    }

    double[] cos_theta = new double[90];
    double[] sin_theta = new double[90];
    for (int i = 0; i < cos_theta.length; i++) {
        double theta = i * theta_spacing;
        cos_theta[i] = Math.cos(theta);
        sin_theta[i] = Math.sin(theta);
    }

    double[] circle_x = new double[90];
    double[] circle_y = new double[90];
    for (int i = 0; i < 90; i++) {
        circle_x[i] = R2 + R1 * cos_theta[i];
        circle_y[i] = R1 * sin_theta[i];
    }

    for (int i = 0; i < 90; i++) {
        for (int j = 0; j < 315; j++) {
            double x = cos_B * cos_phi[j] + sin_A * sin_B * sin_phi[j];
            double y = sin_B * cos_phi[j] - sin_A * cos_B * sin_phi[j];
            double z = K2 + cos_A * sin_phi[j];
            double ooz = 1 / z;

            int xp = (int) (screen_size / 2 + K1 * ooz * (x - circle_y[i] * cos_A * sin_B));
            int yp = (int) (screen_size / 2 - K1 * ooz * (y + circle_y[i] * cos_A * cos_B));

            double L = ((cos_phi[j] * cos_theta[i] * sin_B) - cos_A * sin_phi[j] * cos_theta[i] - sin_A * sin_theta[i]) + cos_B * (cos_A * sin_theta[i] - sin_phi[j] * cos_theta[i] * sin_A);
            int L_val = (int) Math.round(L * 8);

            if (L_val >= 0 && ooz > zbuffer[xp][yp]) {
                zbuffer[xp][yp] = ooz;
                output[xp][yp] = illumination[L_val % illumination.length];
            }
        }
    }

    return output;
}

void pprint(char[][] array) {
    for (char[] row : array) {
        for (char c : row) {
            System.out.print(c);
        }
        System.out.println();
    }
}


for (int t = 0; t < screen_size * screen_size; t++) {
    A += theta_spacing;
    B += phi_spacing;
    System.out.print("\033[H");
    char[][] frame = renderFrame(A, B);
    pprint(frame);
    Thread.sleep(30);
}

```

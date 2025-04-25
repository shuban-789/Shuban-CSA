---
layout: post
title: AP Exam Review
description: AP Exam Tangibles and Reflection
type: issues
comments: True
---

## 4 FRQs (Reviewed) 📝
- [x] Arrays
- [ ] Classes
- [ ] 2D Arrays
- [x] Methods and Control Structures

## Units Covered by me for full deep dive review 🌊

- [x] Unit 1: Datatypes and Variables
- [x] Unit 2: Using Classes and Methods
- [x] Unit 3: Booleans and if-else
- [ ] Unit 4: Iteration
- [ ] Unit 5: Writing Classes
- [ ] Unit 6: Array
- [ ] Unit 7: ArrayList
- [ ] Unit 8: 2D Array
- [ ] Unit 9: Inheritance
- [ ] Unit 10: Recursion

## FRQ Reflection: 2D Array (2015)

Part A:
```java
puiblic static int arraySum(int[] arr) {
	int sum = 0;
    for (int i = 0; i < arr.length; i++) {
    	sum += arr[i];
    }
    return sum;
}
```

Correct

Part B:
```java
public static int[] rowSums(int[][] arr2D) {
	int[] retarray = {};
    for (int i = 0; i < arr2D.length; i++) {
    	retarray[i] = arraySum(arr2D[i]);
    }
    return retarray;
}
```

Correct

Part C:
```java
public static boolean isDiverse(int[][] arr2D) {
	int[] rowsums = rowSums(arr2D);
    for (int i = 0; i < rowsums.length; i++) {
    	
    }
}
```

Correction
```java
public static boolean isDiverse(int[][] arr2D) {
    int[] rowsums = rowSums(arr2D);
    for (int i = 0; i < rowsums.length; i++) {
        for (int j = i + 1; j < rowsums.length; j++) {
            if (rowsums[i] == rowsums[j]) {
                return false;
            }
        }
    }
    return true;
}
```
![Image](https://github.com/user-attachments/assets/a1136f33-fead-4ee7-96c3-b1341f095eea)


Reflection: I think from this specific FRQ problem what I should have done was thought of a way to return the number of unique elements in an array. I could have done this easily through swapping. I used this stragegy for Two Sum

## MCQ Reflection

I think I was struggling a lot on the irertion and the for loop questions. I think I could have definitely improved my strategy on this.

![Image](https://github.com/user-attachments/assets/e4f02274-62a2-489a-a727-4f73edde72dd)

There was a question which concerned iteration from a multiplied produce (m*n) which might I could have one better on. I also did the MCQ in 30 minutes so that was not very good.



![Image](https://github.com/user-attachments/assets/bdeea6ca-e697-42d4-8b86-71cfcbca7edc)
---
layout: post
title: AP Exam Review
description: AP Exam Tangibles and Reflection
type: issues
comments: True
---

## 4 FRQs (Reviewed) 📝
- [ ] Arrays
- [ ] Classes
- [ ] 2D Arrays
- [ ] Methods and Control Structures

## Units Covered by me for full deep dive review 🌊

- [ ] Unit 1: Datatypes and Variables
- [ ] Unit 2: Using Classes and Methods
- [ ] Unit 3: Booleans and if-else
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

Part C:
```java
public static boolean isDiverse(int[][] arr2D) {
	int[] rowsums = rowSums(arr2D);
    for (int i = 0; i < rowsums.length; i++) {
    	
    }
}
```

Reflection: I think from this specific FRQ problem what I should have done was thought of a way to return the number of unique elements in an array. I could have done this easily through swapping

## MCQ Reflection

I think I was struggling a lot on the irertion and the for loop questions. I think I could have definitely improved my strategy on this.

![Image](https://github.com/user-attachments/assets/e4f02274-62a2-489a-a727-4f73edde72dd)

There was a question which concerned iteration from a multiplied produce (m*n) which might I could have one better on. I also did the MCQ in 30 minutes so that was not very good.

[2020 Practice Exam MCQ Reflection](https://shuban-789.github.io/Shuban-CSA/2025/03/04/mcq_IPYNB_2_.html)

![Image](https://github.com/user-attachments/assets/bdeea6ca-e697-42d4-8b86-71cfcbca7edc)
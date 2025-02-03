---
layout: post
comments: True
title: Period 3 2D Arrays Pt 2 - Refresher
menu: nav/CSA_Units/frqs/per3-2Darrays-pt2.html
permalink: csa/frqs/p3/2darrays2/refresher
---

# 2D Array Review

This is a review of 2D Arrays. Please see part 1 of the lesson for more details.

## Creation of 2D Array

2D arrays are simply arrays within arrays.
```java
// Declare a 2D array
int[][] array = new int[3][4]; // 3 rows and 4 columns

// Declare and initialize with values
int[][] array = {
    {1, 2, 3},
    {4, 5, 6},
    {7, 8, 9}
};
```


## Indexing of 2D Array

To index a 2D array, place the row number, followed by the column number.
```java
// Access elements in the array
int value = array[0][1]; // Gets the number in the 1st row and 2nd column
System.out.println(value); // Output: 2

int value2 = array[1][2]; // Gets the number in the 2nd row and 3rd column
System.out.println(value2); // Output: 6

// Whoopsie daisies! Error! This is out of bounds
int value3 = array[20][10];
System.out.println(value3);
```


## Iteration of 2D Array

To iterate through a 2D array:

**Row-major order**
```java
// For loop: Add 5 to all elements of the array
for (int row = 0; row < array.length; row++) {
    for (int col = 0; col < array[row].length; col++) {
        array[row][col] += 5; // Add 5 to each element
    }
}

// Foreach loop: Output all elements of the array
for (int[] row : array) {
    for (int item : row) {
        System.out.print(item + " ");
    }
    System.out.println(); // Adds a newline after each row
}
```

**Column-major order**
```java
for (int col = 0; col < array[0].length; col++) {
    for (int row = 0; row < array.length; row++) {
        System.out.print(array[row][col]);
    }
    System.out.println();
}
```


## Popcorn Hack

Farmer John has 7 cats. They all eat a certain amount of magical grass, measured in lbs, every day. The farmer makes a 2D array with information about how much grass each cat ate each day. Each row represents how many pounds each cat ate that day. Each column represents a single cat. Please return a 1D array, where each element is the total amount of grass the cat ate.

**TL;DR:** Sum up the values within each column and return a 1D array.
```java
## Popcorn Hack

Farmer John has 7 cats. They all eat a certain amount of magical grass, measured in lbs, every day. The farmer makes a 2D array with information about how much grass each cat ate each day. Each row represents how many pounds each cat ate that day. Each column represents a single cat. Please return a 1D array, where each element is the total amount of grass the cat ate.

**TL;DR:** Sum up the values within each column and return a 1D array.

```java
// Sample test case
int[][] grassData = {
    {2, 3, 1, 4, 3, 2, 5},
    {1, 2, 3, 1, 4, 2, 3},
    {3, 4, 2, 5, 1, 3, 2}
};

// Your Code Here

// Expected Output: [6, 9, 6, 10, 8, 7, 10]
```



```Java
int[][] grassData = {
    {2, 3, 1, 4, 3, 2, 5},
    {1, 2, 3, 1, 4, 2, 3},
    {3, 4, 2, 5, 1, 3, 2}
};

for (int i = 0; i < grassData[0].length; i++) {
    int sum = 0;
    for (int j = 0; j < grassData.length; j++) {
        sum += grassData[j][i];
    }
    System.out.println(sum);
}
```

    6
    9
    6
    10
    8
    7
    10


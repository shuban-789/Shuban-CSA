---
layout: post
comments: True
title: 2D Arrays
categories: ['AP CSA']
courses: {'csa': {'week': 17}}
permalink: /csa/p3-2darrays4
---

# Explanation of the 2018 AP CSA FRQ - Question 4 (Part B)

## Prior Knowledge 

1.	Helper Methods in the Problem

	•	getColumn(int[][] arr2D, int c): Returns an array containing all elements in column c of a 2D array.

	•	containsDuplicates(int[] arr): Returns true if the array contains duplicate values.

	•	hasAllValues(int[] arr1, int[] arr2): Returns true if all elements in arr1 are present in arr2.

2.	Latin Square Definition

	•	The first row has no duplicate values.

	•	All values in the first row appear in every row of the square.

	•	All values in the first row appear in every column of the square.

3. 	Preconditions

	•	The input array is guaranteed to be square (equal number of rows and columns).
	
	•	At least one row exists in the array.


```java
public static boolean isLatin(int[][] square) {
    int[] firstRow = square[0];
    
    // Check for duplicates in the first row
    if (containsDuplicates(firstRow)) {
        return false;
    }
    
    // Check if all other rows have the same values as the first row
    for (int r = 1; r < square.length; r++) {
        if (!hasAllValues(firstRow, square[r])) {
            return false;
        }
    }
    
    // Check if all columns have the same values as the first row
    for (int c = 0; c < firstRow.length; c++) {
        if (!hasAllValues(firstRow, getColumn(square, c))) {
            return false;
        }
    }
    
    return true;
}
```

## Checking for Duplicates in the First Row

The method begins by calling containsDuplicates(square[0]) to check if the first row contains duplicate values. A Latin 
square requires all values in each row to be unique, so if duplicates are found, the method immediately returns false.

## Validating Rows Against the First Row

The method iterates through the remaining rows (square[r]) and uses hasAllValues(square[0], square[r]) to ensure that each row contains all the values present in the first row. If any row does not meet this condition, the method returns false.

## Validating Columns Against the First Row

The method checks each column by constructing it using getColumn(square, c) and then verifying it against the first row with hasAllValues(square[0], getColumn(square, c)). If any column does not contain all the values from the first row, the method returns false.

## Returning the Result

If all rows and columns pass the checks, the method concludes that the input is a Latin square and returns true. Otherwise, it returns false.

## Meets the Latin Square Requirement

	•	No duplicates in the first row.

	•	All rows contain the same values as the first row.
    
	•	All columns contain the same values as the first row.

[Scoring Guidelines](https://github.com/user-attachments/assets/f360a2cd-605d-47f4-868f-a1aacf71f375)

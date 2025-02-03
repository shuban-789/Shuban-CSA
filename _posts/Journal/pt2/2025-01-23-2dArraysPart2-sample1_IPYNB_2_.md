---
layout: post
comments: True
title: Period 3 2D Arrays Pt 2 - Sample Problem 1
menu: nav/CSA_Units/frqs/per3-2Darrays-pt2.html
permalink: csa/frqs/p3/2darrays2/sample1
---

# 2021 FRQ Question 4

This question involves manipulating a two-dimensional array of integers. You will write two static methods of the `ArrayResizer` class, which is shown below.

```java
public class ArrayResizer
{
    /** 
     * Returns true if and only if every value in row r of array2D is non-zero.
     * Precondition: r is a valid row index in array2D.
     * Postcondition: array2D is unchanged.
     */
    public static boolean isNonZeroRow(int[][] array2D, int r)
    { /* to be implemented in part (a) */ }

    /** 
     * Returns the number of rows in array2D that contain all non-zero values.
     * Postcondition: array2D is unchanged.
     */
    public static int numNonZeroRows(int[][] array2D)
    { /* implementation not shown */ }

    /** 
     * Returns a new, possibly smaller, two-dimensional array that contains only rows
     * from array2D with no zeros, as described in part (b).
     * Precondition: array2D contains at least one column and at least one row with no zeros.
     * Postcondition: array2D is unchanged.
     */
    public static int[][] resize(int[][] array2D)
    { /* to be implemented in part (b) */ }
}



## Part (a) and Part (b) Combined

### (a) Write the `isNonZeroRow` method

Write the method `isNonZeroRow`, which returns `true` if and only if all elements in row `r` of a two-dimensional array `array2D` are not equal to zero.

For example, consider the following statement, which initializes a two-dimensional array:

<!-- {% raw %} -->
```java
int[][] arr = {{2, 1, 0},
               {1, 3, 2},
               {0, 0, 0},
               {4, 5, 6}};
```
<!-- {% endraw%} -->

Sample calls to `isNonZeroRow` are shown below:

| Call to `isNonZeroRow`            | Value Returned | Explanation                                |
|-----------------------------------|----------------|--------------------------------------------|
| `ArrayResizer.isNonZeroRow(arr, 0)` | `false`        | At least one value in row `0` is zero.     |
| `ArrayResizer.isNonZeroRow(arr, 1)` | `true`         | All values in row `1` are non-zero.        |
| `ArrayResizer.isNonZeroRow(arr, 2)` | `false`        | At least one value in row `2` is zero.     |
| `ArrayResizer.isNonZeroRow(arr, 3)` | `true`         | All values in row `3` are non-zero.        |

Complete the `isNonZeroRow` method:

```java
/** Returns true if and only if every value in row r of array2D is non-zero.
  * Precondition: r is a valid row index in array2D.
  * Postcondition: array2D is unchanged.
  */
public static boolean isNonZeroRow(int[][] array2D, int r)
{ 
    // Your implementation here
}
```

---

### (b) Write the `resize` method

Write the method `resize`, which returns a new two-dimensional array containing only rows from `array2D` with all non-zero values. The elements in the new array should appear in the same order as the order in which they appeared in the original array.

The following code segment initializes a two-dimensional array and calls the `resize` method:

<!-- {% raw %} -->
```java
int[][] arr = {{2, 1, 0},
               {1, 3, 2},
               {0, 0, 0},
               {4, 5, 6}};
int[][] smaller = ArrayResizer.resize(arr);
```
<!-- {% endraw %} -->

When the code segment completes, the following will be the contents of `smaller`:

<!-- {% raw %} -->
```java
{{1, 3, 2}, {4, 5, 6}}
```
<!-- {% endraw %} -->

A helper method, `numNonZeroRows`, has been provided for you. The method returns the number of rows in its two-dimensional array parameter that contain no zero values.

Complete the `resize` method. Assume that `isNonZeroRow` works as specified, regardless of what you wrote in part (a). You must use `numNonZeroRows` and `isNonZeroRow` appropriately to receive full credit.

```java
/** Returns a new, possibly smaller, two-dimensional array that contains only rows
  * from array2D with no zeros, as described in part (b).
  * Precondition: array2D contains at least one column and at least one row with no zeros.
  * Postcondition: array2D is unchanged.
  */
public static int[][] resize(int[][] array2D)
{
    // Your implementation here
}
```


# AP® Computer Science A 2021 Scoring Guidelines

## Question 4: 2D Array (9 points)

### Canonical Solution

#### (a)
```java
public static boolean isNonZeroRow(int[][] array2D, int r) {
    for (int col = 0; col < array2D[0].length; col++) {
        if (array2D[r][col] == 0) {
            return false;
        }
    }
    return true;
}
```
#### (b)
```java
public static int[][] resize(int[][] array2D) {
    int numRows = array2D.length;
    int numCols = array2D[0].length;

    int[][] result = new int[numNonZeroRows(array2D)][numCols];
    int newRowIndex = 0;

    for (int r = 0; r < numRows; r++) {
        if (isNonZeroRow(array2D, r)) {
            for (int c = 0; c < numCols; c++) {
                result[newRowIndex][c] = array2D[r][c];
            }
            newRowIndex++;
        }
    }
    return result;
}
```

---

### (a) `isNonZeroRow` Scoring Criteria

| Scoring Criteria | Decision Rules |
|------------------|----------------|
| **1** Compares an item from `array2D` with `0` | Responses will **not** earn the point if they fail to attempt the comparison, even if they access an item from `array2D`. **1 point** |
| **2** Accesses every item from row `r` of 2D array (*no bounds errors*) | Responses can still earn the point even if they return early from an otherwise correctly-bounded loop. **1 point** |
| **3** Returns `true` if and only if row contains no zeros | Responses can still earn the point even if they process a column of the 2D array rather than a row. Responses will **not** earn the point if they fail to return a value in some cases. **1 point** |

**Total for part (a): 3 points**

---

### (b) `resize` Scoring Criteria

| Scoring Criteria | Decision Rules |
|------------------|----------------|
| **4** Calls `numNonZeroRows` and `isNonZeroRow` | Responses can still earn the point even if they fail to use or store the return value. Responses will **not** earn the point if they include incorrect number or type of parameters or call methods on an object or class other than `ArrayResizer`. **1 point** |
| **5** Identifies rows with no zeros (*in the context of an `if`*) | Responses can still earn the point even if they call `isNonZeroRow` incorrectly, if the row being tested is clearly identified (index or reference). **1 point** |
| **6** Declares and creates a new 2D array of the correct size | Response will **not** earn the point if they transpose the dimensions of the created array. **1 point** |
| **7** Maintains an index in the new array | Responses will **not** earn the point if they fail to declare, initialize, and update a different index or maintain the index in a way that overwrites, skips, or duplicates rows. **1 point** |
| **8** Traverses all necessary elements of `array2D` (*no bounds errors*) | Responses can still earn the point even if they cause a bounds error by declaring and creating a new 2D array of incorrect size or fail to maintain an index in the new array correctly, resulting in a bounds error. Responses will **not** earn the point if they transpose coordinates, leading to a bounds error and/or copying columns. **1 point** |
| **9** Copies all and only rows identified as having no zero elements into the new array | Responses can still earn the point even if they copy a reference, identify rows incorrectly (if the logical sense can be determined and is correct), or copy columns instead of rows, consistent with the dimensions of the created 2D array. Responses will **not** earn the point if they remove or overwrite data from `array2D` (instead of or in addition to copying it to the new array) or reverse the logical sense of which rows to copy. **1 point** |

**Total for part (b): 6 points**

---

### Question-Specific Penalties
- **-1 (u)** Use `array2D[].length` to refer to the number of columns in a row of the 2D array.

---

**Total for question 4: 9 points**



# Easy Points for AP® CSA 2021 FRQ Question 4

## Part (a): `isNonZeroRow` (3 Points Total)
1. **Compare an element to `0`** ✅  
   - Example: `if (array2D[r][col] == 0)`

2. **Loop through all columns without bounds errors** ✅  
   - Example: `for (int col = 0; col < array2D[0].length; col++)`

3. **Return `true` or `false` correctly** ✅  
   - Example: `return false;` when `0` is found.

---

## Part (b): `resize` (6 Points Total)
1. **Call `isNonZeroRow` or `numNonZeroRows`** ✅  
   - Example: `if (isNonZeroRow(array2D, r))`

2. **Use an `if` statement to identify rows with no `0`s** ✅  
   - Example: `if (isNonZeroRow(array2D, r))`

3. **Create a new 2D array with the correct dimensions** ✅  
   - Example: `int[][] result = new int[numRows][numCols];`

---

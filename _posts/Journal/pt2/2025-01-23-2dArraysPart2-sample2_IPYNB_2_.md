---
layout: post
comments: True
title: Period 3 2D Arrays Pt 2 - Sample Problem 2
menu: nav/CSA_Units/frqs/per3-2Darrays-pt2.html
permalink: csa/frqs/p3/2darrays2/sample2
---

# Sample Problem 2 - Competition!

For this problem, please listen to instructions. There will be an in-class competition which will be an opportunity for extra credit. However, you must complete this problem either way as part of the homework.

## Problem

This question involves a path through a two-dimensional (2D) array of integers, where the path is based on the values of elements in the array. When an element of the 2D array is accessed, the first index is used to specify the row and the second index is used to specify the column. The following `Location` class represents a row and column position in the 2D array.


```Java
// Run this code cell so that using the location class doesn't throw errors in future code cells!
public class Location {
    private int theRow;
    private int theCol;

    public Location(int r, int c) {
        theRow = r;
        theCol = c;
    }

    public int getRow() {
        return theRow;
    }

    public int getCol() {
        return theCol;
    }
}
```

The following `GridPath` class (see the next code cell) contains the 2D array and methods to use to determine a path through the array. You will write two methods of the `GridPath` class.

(a) Write the `getNextLoc` method, which returns a `Location` object that represents the smaller of two neighbors of the grid element at row and col, according to the following rules.
- The two neighbors that are considered are the element below the given element and the
element to the right of the given element, if they exist.
- If both neighbors exist, the Location of the neighbor with the smaller value is
returned. Two neighbors will always have different values.
- If only one neighbor exists, the Location of the existing neighbor is returned.

For example, assume that the grid contains the following values:
![Example grid](https://i.ibb.co/8BFKvYS/image.png)

The following table shows some sample calls to getNextLoc.

| Method Call | Explanation |
| ----------- | ----------- |
| `getNextLoc(0, 0)` | Returns the neighbor to the right (the `Location` representing the element at row 0 and column 1), since 3 < 11 |
| `getNextLoc(1, 3)` | Returns the neighbor below (the `Location` representing the element at row 2 and column 3), since 15 < 16 |
| `getNextLoc(2, 4)` | Returns the neighbor below (the `Location` representing the element at row 3 and column 4), since the given element has no neighbor to the right |
| `getNextLoc(4, 3)` | Returns the neighbor to the right (the `Location` representing the element at row 4 and column 4), since the given element has no neighbor below |

In the example, the `getNextLoc` method will never be called with row 4 and column 4, as
those values would violate the precondition of the method.

(b) Write the `sumPath` method, which returns the sum of all values on a path in grid. The path
begins with the element at row and col and is determined by successive calls to `getNextLoc`.
The path ends when the element in the last row and the last column of grid is reached.
For example, consider the following contents of grid. The shaded elements of grid represent the
values on the path that results from the method call `sumPath(1, 1)`. The method call returns `19`
because `3 + 1 + 2 + 1 + 9 + 1 + 4 + 1 + 0 + 1 + 1 + 5 = 19`.

![An image of a sample path](https://i.ibb.co/bKjbkwV/image.png)


```Java
public class GridPath {
    /** Initialized in the constructor with distinct values that never change */
    private int[][] grid;

    public GridPath(int[][] values) {
        grid = values;
    }

    /**
     * Returns the Location representing a neighbor of the grid element at row and col.
     * Preconditions: row is a valid row index and col is a valid column index in grid.
     * row and col do not specify the element in the last row and last column of grid.
     */
    public Location getNextLoc(int row, int col) {
        // Check if we are at the last row and last column
        if (row == grid.length - 1 && col == grid[0].length - 1) {
            return null; // No next location
        }
        // If we are at the last row, we can only move right
        if (row == grid.length - 1) {
            return new Location(row, col + 1);
        }
        // If we are at the last column, we can only move down
        if (col == grid[0].length - 1) {
            return new Location(row + 1, col);
        }
        // Otherwise, choose the larger neighbor (right or down)
        if (grid[row][col + 1] > grid[row + 1][col]) {
            return new Location(row, col + 1); // Move right
        } else {
            return new Location(row + 1, col); // Move down
        }
    }

    /**
     * Computes and returns the sum of all values on a path through grid.
     * Preconditions: row is a valid row index and col is a valid column index in grid.
     * row and col do not specify the element in the last row and last column of grid.
     */
    public int sumPath(int row, int col) {
        int sum = 0;
        while (true) {
            sum += grid[row][col]; // Add current cell value
            Location nextLoc = getNextLoc(row, col);
            if (nextLoc == null) { // If no next location, break
                break;
            }
            row = nextLoc.getRow();
            col = nextLoc.getCol();
        }
        return sum;
    }
}

// Test the GridPath class
public class Main {
    public static void main(String[] args) {
        int[][] valueGrid = {
            {12, 30, 40, 25, 5},
            {11, 3, 22, 15, 43},
            {7, 2, 9, 4, 0},
            {8, 33, 18, 6, 1}
        };

        GridPath myGrid = new GridPath(valueGrid);
        int result = myGrid.sumPath(1, 1);
        System.out.println("Sum of the path: " + result);
    }
}

Main.main(null);
```

    Sum of the path: 84



```Java

```

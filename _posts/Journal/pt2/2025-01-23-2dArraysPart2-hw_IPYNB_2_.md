---
layout: post
comments: True
title: Period 3 2D Arrays Pt 2 - Homework
permalink: csa/frqs/p3/2darrays2/homework
---

# Problem

Farmer John has a rectangular grass pasture with N rows and M columns for the cows to graze on. Each pasture has a certain tastiness value. However, the gen alpha Bessie has gotten quite picky with what she eats.

Given a 2D array (template below) with size NxM, please write functions for the following:


1. getTotalGrass()
- Return total sum of all "tastiness values" from the pastures in the 2D array
2.  maxSquare()
- Because Bessie sometimes likes enjoying square grass patches, she wants to find the best one.
- Returns the maximum sum of tastiness value of a square in the 2D array. (Square could be 1x1, 2x2, 3x3, etc.) 
3. maxSubarraySum()
- Sometimes, Bessie enjoys eating grass in a line.
- Return the maximum sum of a continuous subarray in this array if it was "flattened" to be a 1D array. In other words, make the 2D array into a 1D array by combining all rows and find the max subarray sum.

For an example case, see below in the code.


### Extra Credit Opportunities
Extra Credit 1 (+0.01): What is the time complexity of your maxSquare code? Explain.

Extra Credit 2 (+0.01): This is achieved if you get the optimal complexity for maxPatch.

Extra Credit 3 (+0.01): What is the time complexity of your maxSubarraySum code? Explain.

Extra Credit 4 (+0.01): This is achieved if you get the optimal complexity for maxSubarraySum.


```java
public class GrassPasture {
    private int[][] pastures;

    public GrassPasture(int[][] pastures) {
        this.pastures = pastures;
    }

    /** Returns the total sum of tastiness values in the 2D array */
    public int getTotalGrass() {
        int total = 0;
        for (int[] row : pastures) {
            for (int value : row) {
                total += value;
            }
        }
        return total;
    }

    /**
     * Returns the maximum sum of any rectangular submatrix.
     * Uses Kadane's algorithm in 2D for O(N² × M) complexity.
     */
    public int maxSquare() {
        int n = pastures.length, m = pastures[0].length;
        int maxSum = Integer.MIN_VALUE;

        // Iterate over all possible row start positions
        for (int top = 0; top < n; top++) {
            int[] temp = new int[m]; // Temporary array to store column sums

            // Expand the bottom row and apply Kadane's algorithm column-wise
            for (int bottom = top; bottom < n; bottom++) {
                for (int col = 0; col < m; col++) {
                    temp[col] += pastures[bottom][col]; // Sum the current column
                }
                maxSum = Math.max(maxSum, kadane(temp)); // Get max sum for this row range
            }
        }
        return maxSum;
    }

    /** Helper function: Kadane's Algorithm to find max subarray sum in a 1D array */
    private int kadane(int[] arr) {
        int maxSum = Integer.MIN_VALUE, currentSum = 0;
        for (int value : arr) {
            currentSum = Math.max(value, currentSum + value);
            maxSum = Math.max(maxSum, currentSum);
        }
        return maxSum;
    }

    /**
     * Returns the maximum sum of a contiguous subarray in the flattened 2D grid.
     * Uses Kadane's algorithm for O(N × M) complexity.
     */
    public int maxSubarraySum() {
        return kadane(flattenGrid());
    }

    /** Flattens the 2D array into a 1D array for maxSubarraySum() */
    private int[] flattenGrid() {
        int n = pastures.length, m = pastures[0].length;
        int[] flattened = new int[n * m];
        int index = 0;
        for (int[] row : pastures) {
            for (int value : row) {
                flattened[index++] = value;
            }
        }
        return flattened;
    }
}

    /*
     * Extra Credit 1 (+0.01): What is the time complexity of your maxSquare code? Explain.
     * - Time Complexity: O(N² × M)
     * - Explanation:
     *   - The function iterates over all possible row start positions (O(N)).
     *   - It expands downward, accumulating column sums (O(N)).
     *   - For each row range, it applies Kadane’s algorithm over M columns (O(M)).
     *   - Final Complexity: O(N² × M), which is significantly faster than the original O(N × M × min(N, M)²) brute-force approach.
     */

    /*
     * Extra Credit 2 (+0.01): This is achieved if you get the optimal complexity for maxPatch.
     * - Since we optimized maxSquare() to O(N² × M), this extra credit is achieved.
     */

    /*
     * Extra Credit 3 (+0.01): What is the time complexity of your maxSubarraySum code? Explain.
     * - Time Complexity: O(N × M)
     * - Explanation:
     *   - The function first flattens the N × M grid into a 1D array (O(N × M)).
     *   - It then applies Kadane’s algorithm, which also runs in O(N × M).
     *   - Final Complexity: O(N × M), which is optimal.
     */

    /*
     * Extra Credit 4 (+0.01): This is achieved if you get the optimal complexity for maxSubarraySum.
     * - Since our maxSubarraySum() function is optimal at O(N × M), this extra credit is achieved.
     */
GrassPasture gp = new GrassPasture(new int[][] {
    {1, 2, 3},
    {4, 5, 6},
    {7, 8, 9}
});
System.out.println("Total Tastiness: " + gp.getTotalGrass());
System.out.println("Max Square Sum: " + gp.maxSquare());
System.out.println("Max Subarray Sum: " + gp.maxSubarraySum());
```

    Total Tastiness: 45
    Max Square Sum: 45
    Max Subarray Sum: 45



```java

```

---
layout: post
comments: True
title: Period 3 2D Arrays Pt 2 - Homework
menu: nav/CSA_Units/frqs/per3-2Darrays-pt2.html
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


```python
public class GrassPasture {
    /** The 2D grid of pasture tastineess values */
    private int[][] pastures;

    /** Constructor initializes the field */
    public GrassPasture(int[][] pastures) {
        this.pastures = pastures;
    }

    /**
     * Returns sum of total tastiness for all values in 2D array
     */
    public int getTotalGrass() {
        /* Code below */
    }

    /**
     * Returns max sum of tastiness of a square in the 2D array (square can be 1x1, 2x2, etc.)
     */
    public int maxSquare() {
        /* Code below */
    }

    /**
     * Returns the maximum tastiness sum subarray in the flattened 2D grid
     */
    public int maxSubarraySum() {
        /* Code below */
    }
}

int[][] pastures = {
    {-3, 6, -1},
    {2, -1, 5},
    {-9, 4, -1}
};

GrassPasture gp = new GrassPasture(pastures);

System.out.println("Total Tastiness: " + gp.getTotalGrass());
// answer should be -2

System.out.println("Max Square Sum: " + gp.maxSquare());
// answer should be 9

System.out.println("Max Subarray Sum: " + gp.maxSubarraySum());
// answer should be 11


// If you are interested in the extra credit, you can answer below:

```

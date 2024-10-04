---
layout: post
toc: True
title: Unit 8 - Homework
description: Unit 8 Period 3 Homework
authors: Shuban Pal
---

# Unit 8 Work Debrief (You're Welcome, Graders 🐦)

- Section 8.1: Hacks, Homework, Extras
- Section 8.2: Hacks, Homework, Extras
- Extra: Donut Animation in Java

# Section 8.1

- Extra: Typing Speed Test
- Try on your Own (2)
- Popcorn Hacks (4)
- HW Hack (1)


## Extra: Typing Speed Test

![typingspeed](image.png)

## Try on your own 1
Write a code to declare and initialize a 2D array that stores the following matrix: 1 2 3 4 5 6 7 8 9


```java
public class ArrayPractice {
    public static void main(String[] args) {
        int[][] matrix = {
            {1, 2, 3},
            {4, 5, 6},
            {7, 8, 9}
        };
        System.out.println(java.util.Arrays.deepToString(matrix));
    }
}

ArrayPractice.main(null)
```

    [[1, 2, 3], [4, 5, 6], [7, 8, 9]]


## Try on your own 2
Write the code to change the element “Java” to “Programming”


```java
String[][] hack = {
    {"Hello", "World"},
    {"Java", "Array"}
};

hack[1][0] = "Programming";

System.out.println(java.util.Arrays.deepToString(hack));

hack[0][0] = "i";
hack[0][1] = "❤️";
hack[1][1] = "😎";

System.out.println(java.util.Arrays.deepToString(hack));

```

    [[Hello, World], [Programming, Array]]
    [[i, ❤️], [Programming, 😎]]


## Popcorn Hack 1
What’s wrong with this code:
```java
int[][] exampleArray = {
    {"Hello", "World"},
    {"Java", "Array"}
};
```

The code initializes a 2D array of the `int` type with elements which are of the `String` type. If whoever wrote this code wrote it days before the AP exam, they are not getting a 5 💀

Fix is below 🥔


```java
String[][] exampleArray = {
    {"Hello", "World"},
    {"Java", "Array"}
};

System.out.println(java.util.Arrays.deepToString(exampleArray));
```

    [[Hello, World], [Java, Array]]


## Popcorn Hack 2
How many total elements can this 2D array hold, and how would you calculate it?

```java
int[][] matrix = new int[2][3];
```

This 2D array can hold 2 arrays, each array can hold 3 elements. Therefore this array can hold 6 elements in total.

## Popcorn Hack 3
How would you write the code to access the last score? MC

![popcorn3](image-1.png)

A. grades[6][3]
B. grades[7][4]
C. grades[grades.length - 1] [grades[0].length - 1]
D. A and C

The answer is `D` which is both answers `A` and `C`. The reasoning is because option `C` accesses the last element of the last array in the array of arrays. Option A does the same but only per this exact scenario. Option B is a cornball answer because it only works for indexing from 1 😂

## Popcorn Hack 4

![popcorn4](image-2.png)

The answer is option `B` which is II only. This is because the first one does not address the correct row (row 2 is the last row) OR the correct column (column 1 is the 2nd column). The third option is completely wrong because it addresses the last row again.

## Homework Hack (Section 8.1)
You are given a function below, and your goal is to match the table to match the 2d array provided in the function.
```java
public class Main {
    public static void main(String[] args) {
        String[][] array = {
            {"My", "A"},
            {"AP", "Class"},
            {"CS", "Rocks!"}}
        ;
        
        for (int col = 0; col < array[0].length; col++) {
            for (int row = 0; row < array.length; row++) {
                System.out.print(array[row][col] + " ");
            }
        }
    }
}

Main.main(null);
```

Of the following, which is the correct table for the 2d array provided in the function?

### A)
|    | 1  | 2  | 3      |
| -- | -- | -- | ------ |
| 1  | My | CS | Class  |
| 2  | AP | A  | Rocks! |

### B)
|    | 1  | 2  | 3      |
| -- | -- | -- | ------ |
| 1  | My | AP | CS     |
| 2  | A  | Class | Rocks! |

### C)
|    | 1  | 2  | 3      |
| -- | -- | -- | ------ |
| 1  | My | AP | Class  |
| 2  | Rocks! | CS | A  |

### Answer Yap 🗣️

The answer is B. The reasoning is that the initiated array creates an array of 3 arrays. Each array in this array of arrays (2D array) has 2 elements each. Which means each column represents the contents of each sub array while the rows represent each matching element in each of the sub arrays. 

DM me @shubuntu on Discord if this is confusing and I will give an answer ont he sport (slack is fine too).

# Section 8.2

- Popcorn Hacks (3)
- Trivia Quiz (1)
- HW Hack (1)

## Popcorn 1
An array called find is shown below. In this popcorn hack, I want you to loop through the numbers until you get to the number that doesn’t belong (55). Then print that number along with which row and column it is located in.


```java
public class Main {
    public static void main(String[] args) {
        int find[][] = {
            {10, 20, 30},
            {40, 55, 60},
            {70, 80, 90},
        };

        int target = 55;
        for (int rows = 0; rows < find.length; rows++) {
            for (int columns = 0; columns < find[rows].length; columns++) {
                if (find[rows][columns] == target) {
                    System.out.println("Misfit number "+target+" at row of index "+rows+" and at column of index "+columns);
                }
            }
        }
    }
}
Main.main(null);
```

    Misfit number 55 at row of index 1 and at column of index 1


## Popcorn Hack 2
Create your own 2D array and use either binary search or linear search. (maybe both 😏 )


```java
public class Main {
    private static int[] linear_search(int[][] matrix, int target) {
        for (int x = 0; x < matrix.length; x++) {
            for (int y = 0; y < matrix[x].length; y++) {
                if (matrix[x][y] == target) {
                    return new int[]{x, y};
                }
            }
        }
        return new int[]{-1, -1};
    }

    private static int[] binary_search(int[][] matrix, int target) {
        int rows = matrix.length;
        int cols = matrix[0].length;
        int low = 0;
        int high = rows * cols - 1;
        while (low <= high) {
            int mid = low + (high - low) / 2;
            int midElement = matrix[mid / cols][mid % cols];
            if (midElement == target) {
                return new int[]{mid / cols, mid % cols};
            } else if (midElement < target) {
                low = mid + 1;
            } else {
                high = mid - 1;
            }
        }
        return new int[]{-1, -1};
    }

    public static void main(String[] args) {
        int[][] array = {
            {32, 54, 45},
            {98, 75, 67},
            {33, 96, 43}
        };
        int target = 96;

        int[] resultlin = linear_search(array, target);
        if (resultlin[0] != -1 || resultlin[1] != -1) {
            System.out.println("🟢 Target found at ("+resultlin[0]+","+resultlin[1]+") through linear search");
        } else {
            System.out.println("🔴 Target was not found");
        }

        int[] resultbin = binary_search(array, target);
        if (resultbin[0] != -1 || resultbin[1] != -1) {
            System.out.println("🟢 Target found at ("+resultbin[0]+","+resultbin[1]+") through binary search");
        } else {
            System.out.println("🔴 Target was not found");
        }

        int target2 = 31;
        int[] resultlin2 = linear_search(array, target2);
        if (resultlin2[0] != -1 || resultlin2[1] != -1) {
            System.out.println("🟢 Target found at ("+resultlin2[0]+","+resultlin2[1]+") through linear search");
        } else {
            System.out.println("🔴 Target was not found");
        }

        int[] resultbin2 = binary_search(array, target2);
        if (resultbin2[0] != -1 || resultbin2[1] != -1) {
            System.out.println("🟢 Target found at ("+resultbin2[0]+","+resultbin2[1]+") through binary search");
        } else {
            System.out.println("🔴 Target was not found");
        }
    }
}
Main.main(null);
```

    Target found at (2,1) through linear search
    Target found at (2,1) through binary search
    Target was not found
    Target was not found


## Popcorn Hack 3
Write a code that performs global sorting on your own 2D array. (The comments said to copy paste my old search algorithms)


```java
public class PopcornHack {
    public static void main(String[] args) {
        int[][] array = {
            {10, 20, 30, 40},
            {15, 25, 35, 45},
            {27, 29, 37, 48},
            {32, 33, 39, 50}
        };
        int target = 29;

        int[] result = linear_search(array, target);
        if (result[0] != -1) {
            System.out.println("Element found at: Row " + result[0] + ", Column " + result[1]);
        } else {
            System.out.println("Element not found.");
        }
    }

    private static int[] linear_search(int[][] matrix, int target) {
        for (int x = 0; x < matrix.length; x++) {
            for (int y = 0; y < matrix[x].length; y++) {
                if (matrix[x][y] == target) {
                    return new int[]{x, y};
                }
            }
        }
        return new int[]{-1, -1};
    }

    private static int[] binary_search(int[][] matrix, int target) {
        int rows = matrix.length;
        int cols = matrix[0].length;
        int low = 0;
        int high = rows * cols - 1;
        while (low <= high) {
            int mid = low + (high - low) / 2;
            int midElement = matrix[mid / cols][mid % cols];
            if (midElement == target) {
                return new int[]{mid / cols, mid % cols};
            } else if (midElement < target) {
                low = mid + 1;
            } else {
                high = mid - 1;
            }
        }
        return new int[]{-1, -1};
    }
}
```

## Trivia Quiz

![triviaquiz](image-3.png)

## Homework Hack (Section 8.2)

Write a program to search through a 2d array to find the grade for John. You will be given a list of students and their grades and you must find the grade of John. If a student is not in the list, then return “Student not found”.


```java
public class GradeSearch {
    public static String searchGrade(String[][] grades, String name) {
        for (int i = 0; i < grades.length; i++) {
            if (grades[i][0].equals(name)) {
                return grades[i][1];
            }
        }
        return "❌ Student not found";
    }

    public static String getGradeIcon(String grade) {
        int numericGrade = Integer.parseInt(grade);

        if (numericGrade >= 90) {
            return "A";
        } else if (numericGrade >= 80) {
            return "(B)";
        } else if (numericGrade >= 70) {
            return "(C)";
        } else {
            return "(F)";
        }
    }

    public static void main(String[] args) {
        String[][] grades = {
            {"John", "93"},
            {"Alice", "85"},
            {"Bob", "78"},
            {"Eve", "92"}
        };

        String nameToSearch = "Alice";
        String grade = searchGrade(grades, nameToSearch);
        
        if (!grade.equals("❌ Student not found")) {
            System.out.println(nameToSearch + "'s grade: " + getGradeIcon(grade) + " ("+grade+")");
        } else {
            System.out.println(nameToSearch + "'s grade: " + grade);
        }

        nameToSearch = "Charlie";
        grade = searchGrade(grades, nameToSearch);
        
        if (!grade.equals("❌ Student not found")) {
            System.out.println(nameToSearch + "'s grade: " + getGradeIcon(grade) + " ("+grade+")");
        } else {
            System.out.println(nameToSearch + "'s grade: " + grade);
        }
    }
}

GradeSearch.main(null);
```

    Alice's grade: (B) (85)
    Charlie's grade: ❌ Student not found


## Extra: Donut Animation in Java

The math is not too complex. Here is a diagram.

![donutmath](image-4.png)

Inspired by `donut.c` and an article about how it works

https://www.a1k0n.net/2011/07/20/donut-math.html

Code is below and should shut off after 10 seconds. It is a bit wonky on Jupyter. Yes the donut actually spins.


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

long startTime = System.currentTimeMillis();
final int duration = 10000;
A = 1;
B = 1;

while (System.currentTimeMillis() - startTime < duration) {
    A += theta_spacing;
    B += phi_spacing;
    System.out.print("\033[H");
    char[][] frame = renderFrame(A, B);
    pprint(frame);
    Thread.sleep(30);
}

```

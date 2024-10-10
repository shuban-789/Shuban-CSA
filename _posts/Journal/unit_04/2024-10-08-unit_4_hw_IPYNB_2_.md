---

---

## Popcorn Hack 1


```Java
public class Main {
    public static void main(String args[]) {
        int i = 0;
        while (i < 5) {
            System.out.println(i);
        }
        
    }
}
Main.main(null)
```


```Java
int i = 0;
while (i < 10) {
    System.out.println(i);
    i += 1;
}

```

Increment Statement (`i++`): This line increments the value of `i` by 1 during each iteration of the loop. Without this increment, the condition `i < 5` would always evaluate to true, resulting in an infinite loop.

# Unit 4.2

## Hack


```Java
import java.util.ArrayList;
import java.util.List;

public class Main {
    public static void main(String[] args) {
        int[] ints = {0, 3, 52, 80, 9, 1, 126, 156};

        List<Integer> evens = new ArrayList<>();
        List<Integer> odds = new ArrayList<>();

        for (int i = 0; i < ints.length; i++) {
            if (ints[i]%2 == 0) {
                evens.add(ints[i]);
            } else {
                odds.add(ints[i]);
            }
        }

        for (int number : ints) {
            if (number % 2 == 0) {
                evens.add(number);
            } else {
                odds.add(number);
            }
        }
        System.out.println("odds: " + evens);
        System.out.println("evens: " + odds);
    }
}

Main.main(null);
```

    odds: [0, 52, 80, 126, 156, 0, 52, 80, 126, 156]
    evens: [3, 9, 1, 3, 9, 1]


# Unit 4.3

## Popcorn Hack

Iterate through the characters a string with a `while` loop.

## Homework


```Java
public class CaesarCipher {
    private int key;
    private String phrase;

    public CaesarCipher(int key, String phrase) {
        this.key = key;
        this.phrase = phrase;
    }

    public String encrypt() {
        return null;
    }
}

CaesarCipher test1 = new CaesarCipher(3, "hello world");
CaesarCipher test2 = new CaesarCipher(10, "abcdefg");
CaesarCipher test3 = new CaesarCipher(20, "i love csa");

System.out.println("test 1: " + test1.encrypt());
System.out.println("test 2: " + test2.encrypt());
System.out.println("test 3: " + test3.encrypt());
```

    test 1: null
    test 2: null
    test 3: null



```Java
public class CaesarCipher {
    private int key;
    private String phrase;

    public CaesarCipher(int key, String phrase) {
        this.key = key;
        this.phrase = phrase;
    }

    public String encrypt() {
        StringBuilder encryptedPhrase = new StringBuilder();
        for (char ch : phrase.toCharArray()) {
            if (Character.isLetter(ch)) {
                char base = Character.isUpperCase(ch) ? 'A' : 'a';
                char encryptedChar = (char) ((ch - base + key) % 26 + base);
                encryptedPhrase.append(encryptedChar);
            } else {
                encryptedPhrase.append(ch);
            }
        }

        return encryptedPhrase.toString();
    }

    public static void main(String[] args) {
        CaesarCipher test1 = new CaesarCipher(3, "hello world");
        CaesarCipher test2 = new CaesarCipher(10, "abcdefg");
        CaesarCipher test3 = new CaesarCipher(20, "i love csa");

        System.out.println("test 1: " + test1.encrypt());
        System.out.println("test 2: " + test2.encrypt());
        System.out.println("test 3: " + test3.encrypt());
    }
}

CaesarCipher.main(null);
```

    test 1: khoor zruog
    test 2: klmnopq
    test 3: c fipy wmu


# Unit 4.4


```Java
import java.util.Scanner;

public class Main {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.print("rows: \n");
        int rows = scanner.nextInt();
        for (int i = rows; i >= 1; i--) {
            for (int j = 1; j <= i; j++) {
                System.out.print(j + " ");
            }
            System.out.println();
        }
        
        scanner.close();
    }
}

Main.main(null);
```

    Enter the number of rows: 
    1 2 3 
    1 2 
    1 


## Hack lol

1. `public class Main`: Added a class declaration to contain the main method.

2. `public static void main(String[] args)`: Wrapped the code in the main method for proper execution.

3. `i--`: Changed from `i-` to `i--` to correctly decrement the loop variable.

4. Loop Condition: Changed `i > 1` to `i >= 1` to ensure that the loop includes the case where `i` equals `1`, allowing it to print the first row.

## Answer


```Java
for (int i = 2; i < 10; i++) {
    for (int y = 1; y <= 5; y++) {
        System.out.print("*");
    }
    System.out.println();
}
```

    *****
    *****
    *****
    *****
    *****
    *****


The code will print a rectangle of asterisks, with 8 rows and 5 columns. 

- The loop `for (int i = 2; i < 10; i++)` executes the code below it 8 times, and in the code executed below it the inside loop `for (int y = 1; y <= 5; y++)` prints 5 asterisks on the same line, followed by a line break after each row. 


# Homework

##  MC 1

What does the following code print? Explain the difference between using a variable like i inside a for loop, vs. using a variable that exists in the code itself for a while loop


A. 5 6 7 8 9

B. 4 5 6 7 8 9 10 11 12

C. 3 5 7 9 11

D. 3 4 5 6 7 8 9 10 11 12

```java
for (int i = 3; i <= 12; i++) {
   System.out.print(i + " ");
}
```

Answer: D

The loop begins with i = 3 and runs until i reaches 12, inclusive. This results in printing every integer from 3 to 12, yielding the output 3 4 5 6 7 8 9 10 11 12. In a for loop, the loop variable (in this case, i) is initialized and managed by the loop itself. Its scope is confined to the loop, which simplifies management and reduces the risk of conflicts with other variables in the program. Conversely, a while loop may use a variable that exists outside of its scope, which can lead to unintended consequences if that variable is modified elsewhere in the code. This can complicate debugging and make the control flow of the program more difficult to understand.

## MC 2

How many times does the following method print a “*” ?

A. 9
B. 7
C. 8
D. 6

```java
for (int i = 3; i < 11; i++) {
   System.out.print("*");
}
```

Answer: B
The loop begins with i = 3 and continues as long as i is less than 11. The values of i during each iteration are: 3, 4, 5, 6, 7, 8, 9, and 10. Consequently, it prints asterisks a total of 8 times.

## MC 3

A. -4 -3 -2 -1 0
B. -5 -4 -3 -2 -1
C. 5 4 3 2 1

```java
int x = -5;
while (x < 0)
{
   x++;
   System.out.print(x + " ");
}
```

Answer: B.

The loop starts with x = -5 and increments x by 1 during each iteration, printing the value of x before the increment. The output will thus be -4 -3 -2 -1 0, but since 0 is not less than 0, the last increment will not print. Therefore, the correct output is -4 -3 -2 -1.

## MC 4

A. 20
B. 21
C. 25
D. 30


```java
int sum = 0;

for (int i = 1; i <= 5; i++) {
    if (i % 2 == 0) {
        sum += i * 2;
    } else {
        sum += i;
    }
}

System.out.println(sum);
```

The loop runs from 1 to 5, calculating the sum based on whether i is odd or even:

- Iteration 1: sum = 0 + 1 = 1
- Iteration 2: sum = 1 + (2 * 2) = 5
- Iteration 3: sum = 5 + 3 = 8
- Itration 4: sum = 8 + (4 * 2) = 16
- Iteration 5: sum = 16 + 5 = 21

## Loops easy hack

- Use a while loop to find the numbers from 1-50 that are divisible by 3 or 5, then store them into a list (make sure to print it out at the end)
- Use a for loop to do the same thing detailed above


```Java
import java.util.ArrayList;
import java.util.List;

public class DivisibleNumbers {
    public static void main(String[] args) {
        List<Integer> divisibleNumbers = new ArrayList<>();
        int i = 1;

        while (i <= 50) {
            if (i % 3 == 0 || i % 5 == 0) {
                divisibleNumbers.add(i);
            }
            i++;
        }

        System.out.println("Numbers divisible by 3 or 5 (while loop): " + divisibleNumbers);
    }
}

DivisibleNumbers.main(null);
```

    Numbers divisible by 3 or 5 (while loop): [3, 5, 6, 9, 10, 12, 15, 18, 20, 21, 24, 25, 27, 30, 33, 35, 36, 39, 40, 42, 45, 48, 50]


## For Loop


```Java
import java.util.ArrayList;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.IntStream;

public class DivisibleNumbers {
    public static void main(String[] args) {
        List<Integer> divisibleNumbers = findDivisibleNumbers(1, 50);
        printDivisibleNumbers(divisibleNumbers);
    }

    private static List<Integer> findDivisibleNumbers(int start, int end) {
        return IntStream.rangeClosed(start, end)
                .filter(i -> i % 3 == 0 || i % 5 == 0)
                .boxed()
                .collect(Collectors.toList());
    }

    private static void printDivisibleNumbers(List<Integer> numbers) {
        System.out.println("Numbers divisible by 3 or 5: " + numbers);
    }
}

```

## Harder hack


```Java
import java.util.ArrayList;
import java.util.List;
import java.util.Scanner;

public class PalindromeFinder {
    public static void main(String[] args) {
        List<Integer> testList = initializeTestList();
        List<Integer> palindromes = findPalindromes(testList);

        System.out.println("Palindromes: " + palindromes);
    }

    private static List<Integer> initializeTestList() {
        Scanner scanner = new Scanner(System.in);
        List<Integer> numbers = new ArrayList<>();
        
        System.out.println("Enter integers (type 'done' to finish):");
        while (scanner.hasNext()) {
            if (scanner.hasNextInt()) {
                numbers.add(scanner.nextInt());
            } else if (scanner.next().equalsIgnoreCase("done")) {
                break;
            } else {
                System.out.println("Invalid input. Please enter an integer or 'done' to finish.");
            }
        }
        return numbers;
    }

    private static List<Integer> findPalindromes(List<Integer> numbers) {
        List<Integer> palindromes = new ArrayList<>();
        
        for (int number : numbers) {
            if (isPalindrome(number)) {
                palindromes.add(number);
            }
        }
        return palindromes;
    }

    private static boolean isPalindrome(int number) {
        String str = Integer.toString(number);
        return str.equals(new StringBuilder(str).reverse().toString());
    }
}

PalindromeFinder.main(null)
```

    Enter integers (type 'done' to finish):


## Bonus


```Java
import java.util.Arrays;

public class SpiralMatrix {
    private int[][] matrix;
    private int value;

    public SpiralMatrix(int n) {
        this.matrix = new int[n][n];
        this.value = 1;
    }

    public void generateSpiral() {
        int top = 0, bottom = matrix.length - 1, left = 0, right = matrix[0].length - 1;

        while (value <= matrix.length * matrix[0].length) {
            fillTopRow(top, left, right);
            top++;
            fillRightColumn(top, bottom, right);
            right--;
            fillBottomRow(bottom, left, right);
            bottom--;
            fillLeftColumn(top, bottom, left);
            left++;
        }
    }

    private void fillTopRow(int row, int left, int right) {
        for (int i = left; i <= right; i++) {
            matrix[row][i] = value++;
        }
    }

    private void fillRightColumn(int top, int bottom, int col) {
        for (int i = top; i <= bottom; i++) {
            matrix[i][col] = value++;
        }
    }

    private void fillBottomRow(int row, int left, int right) {
        for (int i = right; i >= left; i--) {
            matrix[row][i] = value++;
        }
    }

    private void fillLeftColumn(int top, int bottom, int col) {
        for (int i = bottom; i >= top; i--) {
            matrix[i][col] = value++;
        }
    }

    public void printMatrix() {
        System.out.println("Spiral Matrix:");
        for (int[] row : matrix) {
            System.out.println(Arrays.toString(row));
        }
    }

    public static void main(String[] args) {
        SpiralMatrix spiralMatrix = new SpiralMatrix(3);
        spiralMatrix.generateSpiral();
        spiralMatrix.printMatrix();
    }
}

SpiralMatrix.main(null);
```

    Spiral Matrix:
    [1, 2, 3]
    [8, 9, 4]
    [7, 6, 5]


# Bonus Bonus

Matrix Multiplier


```Java
import java.util.Arrays;
import java.util.Scanner;

public class MatrixMultiplier {
    private int[][] matrixA;
    private int[][] matrixB;
    private int[][] resultMatrix;

    public MatrixMultiplier(int rowsA, int colsA, int rowsB, int colsB) {
        matrixA = new int[rowsA][colsA];
        matrixB = new int[rowsB][colsB];
        if (colsA != rowsB) {
            throw new IllegalArgumentException("Number of columns in Matrix A must equal number of rows in Matrix B.");
        }
        resultMatrix = new int[rowsA][colsB];
    }

    public void inputMatrixA() {
        System.out.println("Enter elements for Matrix A:");
        inputMatrix(matrixA);
    }

    public void inputMatrixB() {
        System.out.println("Enter elements for Matrix B:");
        inputMatrix(matrixB);
    }

    private void inputMatrix(int[][] matrix) {
        Scanner scanner = new Scanner(System.in);
        for (int i = 0; i < matrix.length; i++) {
            for (int j = 0; j < matrix[i].length; j++) {
                matrix[i][j] = scanner.nextInt();
            }
        }
    }

    public void multiplyMatrices() {
        for (int i = 0; i < matrixA.length; i++) {
            for (int j = 0; j < matrixB[0].length; j++) {
                resultMatrix[i][j] = 0; // Initialize to zero
                for (int k = 0; k < matrixA[0].length; k++) {
                    resultMatrix[i][j] += matrixA[i][k] * matrixB[k][j];
                }
            }
        }
    }

    public void printResult() {
        System.out.println("Resultant Matrix:");
        for (int[] row : resultMatrix) {
            System.out.println(Arrays.toString(row));
        }
    }

    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.print("Enter rows and columns for Matrix A: ");
        int rowsA = scanner.nextInt();
        int colsA = scanner.nextInt();

        System.out.print("Enter rows and columns for Matrix B: ");
        int rowsB = scanner.nextInt();
        int colsB = scanner.nextInt();

        MatrixMultiplier matrixMultiplier = new MatrixMultiplier(rowsA, colsA, rowsB, colsB);
        matrixMultiplier.inputMatrixA();
        matrixMultiplier.inputMatrixB();
        matrixMultiplier.multiplyMatrices();
        matrixMultiplier.printResult();
    }
}

MatrixMultiplier.main(null);
```

    Enter rows and columns for Matrix A: Enter rows and columns for Matrix B: Enter elements for Matrix A:
    Enter elements for Matrix B:
    Resultant Matrix:
    [19, 22]
    [43, 50]


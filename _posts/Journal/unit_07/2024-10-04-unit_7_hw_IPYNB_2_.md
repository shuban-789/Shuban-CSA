---
layout: post
toc: True
title: Unit 8 - Homework
description: Unit 8 Period 3 Homework
authors: Shuban Pal
---

# Unit 7 Work Debrief (You're Welcome, Graders 🥔)

- Sections 7.1-7.2: Array List Methods
- Section 7.3: Traversing Arrays
- Sections 7.4-7.5: Developing Algorithms and Searching
- Section 7.6 - ArrayLists, Sorting
- Section 7.7: Ethics
- Extra: Donut Animation in Java Using ArrayLists

## Popcorn Hack 7.1 & 7.2

Create an ArrayList of Strings with the following elements: “Apple”, “Banana”, “Cherry”, “Date”, “Elderberry”. Complete the following tasks using the ArrayList methods you’ve learned:

Task 1: Print the size of the ArrayList.
Task 2: Add a new element “Fig” to the end of the list.
Task 3: Insert “Grape” at index 2.
Task 4: Replace the element at index 4 with “Guava”.
Task 5: Remove the element at index 1.
Task 6: Retrieve and print the element at index 3.
At the end of each task, print the current state of the ArrayList to verify the result.


```Java
import java.util.ArrayList;

ArrayList<String> fruits = new ArrayList<>();
fruits.add("Apple");
fruits.add("Banana");
fruits.add("Cherry");
fruits.add("Date");
fruits.add("Elderberry");

System.out.println("Size of ArrayList: " + fruits.size());
System.out.println(fruits);
```

    Size of ArrayList: 5
    [Apple, Banana, Cherry, Date, Elderberry]



```Java
fruits.add("Fig");
System.out.println(fruits);
```

    [Apple, Banana, Cherry, Date, Elderberry, Fig]



```Java
fruits.add(2, "Grape");
System.out.println(fruits);
```

    [Apple, Banana, Grape, Cherry, Date, Elderberry, Fig]



```Java
fruits.set(4, "Guava");
System.out.println(fruits);
```

    [Apple, Banana, Grape, Cherry, Guava, Elderberry, Fig]



```Java
fruits.remove(1);
System.out.println(fruits);
```

    [Apple, Grape, Cherry, Guava, Elderberry, Fig]



```Java
String fruitAtIndex3 = fruits.get(3);
System.out.println("Element at index 3: " + fruitAtIndex3);
System.out.println(fruits);
```

    Element at index 3: Guava
    [Apple, Grape, Cherry, Guava, Elderberry, Fig]


## Popcorn Hacks 7.3

- MCQ Set (1)

![image](image.png)

## Popcorn Hacks 7.4 & 7.5

- MCQ Questions (2)

## MCQ

```
A. [2, 3]

B. [1, 2, 3]

C. [1, 2]

D. [1, 3]
```

The output is D. I literally answered this question in class. The reaosn for this is because the numbers 1, 2, and 3 are added to the array yet the element in the middle index is removed. It is because of 0 indexing and this that the output is [1, 3]

```
A. [1, 2, 3, 4, 5]

B. [1, 2, 4, 5, 6]

C. [1, 2, 5, 4, 6]

D. [1, 5, 2, 4, 6]
```

The answer is B. The reason is because there is 0 indexing. Because of this, the index 2 will contain the 3rd element in the list. Thsi is why it willbe set as 4. Numlist add only adds the integer to the end of the list.

## Popcorn Hack

Finish the code below


```Java
public class ArrayListHacks {
    private int findSum(ArrayList<Integer> values) {
        int result = 0;
        for (int value : values) {
            result += value;
        }
        return result;
    }

    public static void main(String[] args) {
        ArrayList<Integer> nums = new ArrayList<>();
        nums.add(0);
        nums.add(1);
        nums.add(2);
        nums.add(3);
        nums.add(5);
        nums.add(8);

        ArrayListHacks hacks = new ArrayListHacks();
        System.out.println(hacks.findSum(nums));
    }
}

ArrayListHacks.main(null);
```

    19


## Popcorn Hack 6

Given this list:

Duck A (4.5 kg)
Duck B (2.1 kg)
Duck C (5.0 kg)
Duck D (1.9 kg)
After sorting, the output should be:

Duck D (1.9 kg)
Duck B (2.1 kg)
Duck A (4.5 kg)
Duck C (5.0 kg)
You can use this class for the ducks:


```Java
import java.util.ArrayList;
import java.util.Collections;

class DebugDuck implements Comparable<DebugDuck> {
    String name;
    double weight;

    public DebugDuck(String name, double weight) {
        this.name = name;
        this.weight = weight;
    }

    @Override
    public int compareTo(DebugDuck other) {
        return Double.compare(this.weight, other.weight);
    }

    @Override
    public String toString() {
        return name + " (" + weight + " kg)";
    }
}

public class Main {
    public static void main(String[] args) {
        ArrayList<DebugDuck> ducks = new ArrayList<>();
        ducks.add(new DebugDuck("Duck A", 4.5));
        ducks.add(new DebugDuck("Duck B", 2.1));
        ducks.add(new DebugDuck("Duck C", 5.0));
        ducks.add(new DebugDuck("Duck D", 1.9));

        Collections.sort(ducks);

        for (DebugDuck duck : ducks) {
            System.out.println(duck);
        }
    }
}

Main.main(null);
```

    Duck D (1.9 kg)
    Duck B (2.1 kg)
    Duck A (4.5 kg)
    Duck C (5.0 kg)


## 7th mini Hack

What can be used in place of the blank to ensure the users data is cleared?


```Java
ArrayList<String> userData = new ArrayList<>();
userData.add("Arnav Nadar");
userData.add("arnaviscool@cool.com");

// arnav please forgive my late submission :pray:

System.out.println(userData.get(0));
System.out.println(userData.get(1));

userData.clear();
userData = null;


```

    Arnav Nadar
    arnaviscool@cool.com


## ArrayList Homework Activity

Objective:
Students will create, manipulate, and sort an ArrayList of integers.

Activity Outline:
Create an ArrayList:
Task: Create an ArrayList of integers and add 5 elements of your choice.
Hint: Use the ArrayList class and the .add() method to add elements.
Modify an Element:
Task: Change the second element (index 1) of the ArrayList to a new value (e.g., 100).
Hint: The .set() method allows you to update an element at a specific index.
Remove an Element:
Task: Remove the third element (index 2) from the ArrayList.
Hint: Use the .remove() method to delete an element by its index.
Search for an Element:
Task: Check if a specific number (e.g., 30) is in the ArrayList and print a message based on whether it is found or not.
Hint: The .contains() method can be used to check for the presence of an element.
Loop Through the ArrayList:
Task: Use a for loop to print each element of the ArrayList.
Hint: You can use a traditional for loop or an enhanced for loop (for-each) to iterate through the elements.
Sort the ArrayList:
Task: Sort the ArrayList in ascending order.
Hint: Use Collections.sort() to sort the ArrayList.
Print the Sorted ArrayList:
Task: Print the sorted ArrayList to see the updated order of the elements.
Hint: Use System.out.println() to print the sorted list.

### Task 1


```Java
import java.util.ArrayList;

ArrayList<Integer> numbers = new ArrayList<>();
numbers.add(15);
numbers.add(42);
numbers.add(8);
numbers.add(23);
numbers.add(35);

System.out.println(numbers);
```

    [15, 42, 8, 23, 35]


### Task 2


```Java
numbers.set(1, 100);

System.out.println(numbers);
```

    [15, 100, 8, 23, 35]


### Task 3


```Java
numbers.remove(2);

System.out.println(numbers);

```

    [15, 100, 23, 35]


### Task 4


```Java
if (numbers.contains(30)) {
    System.out.println("30 is in the ArrayList");
} else {
    System.out.println("30 is not in the ArrayList");
}

```

    30 is not in the ArrayList


### Task 5


```Java
for (int number : numbers) {
    System.out.println(number);
}

```

    15
    100
    23
    35


### Task 6


```Java
import java.util.Collections;

Collections.sort(numbers);

System.out.println(numbers);

```

    [15, 23, 35, 100]


### Task 7


```Java
System.out.println("Sorted ArrayList: " + numbers);
```

    Sorted ArrayList: [15, 23, 35, 100]


## EXTRA: ArrayList Ascii Art


```Java
import java.util.ArrayList;
import java.util.Arrays;

public class AsciiArtMessage {
    public static void main(String[] args) {
        String message = "HELLO";
        ArrayList<ArrayList<String>> asciiArt = new ArrayList<>();

        ArrayList<String> h = new ArrayList<>(Arrays.asList("H  H", "H  H", "HHHH", "H  H", "H  H"));
        ArrayList<String> e = new ArrayList<>(Arrays.asList("EEEE", "E   ", "EEE ", "E   ", "EEEE"));
        ArrayList<String> l = new ArrayList<>(Arrays.asList("L   ", "L   ", "L   ", "L   ", "LLLL"));
        ArrayList<String> o = new ArrayList<>(Arrays.asList(" OOO ", "O   O", "O   O", "O   O", " OOO "));

        for (char c : message.toCharArray()) {
            switch (c) {
                case 'H': asciiArt.add(h); break;
                case 'E': asciiArt.add(e); break;
                case 'L': asciiArt.add(l); break;
                case 'O': asciiArt.add(o); break;
                default: break;
            }
        }

        for (int row = 0; row < 5; row++) {
            for (ArrayList<String> letter : asciiArt) {
                System.out.print(letter.get(row) + "  ");
            }
            System.out.println();
        }
    }
}

AsciiArtMessage.main(null)

```

    H  H  EEEE  L     L      OOO   
    H  H  E     L     L     O   O  
    HHHH  EEE   L     L     O   O  
    H  H  E     L     L     O   O  
    H  H  EEEE  LLLL  LLLL   OOO   


## EXTRA: Donut Animation BUT with arraylist

Inspired by `donut.c` and an article about how it works

https://www.a1k0n.net/2011/07/20/donut-math.html

Code is below and should shut off after 10 seconds. It is a bit wonky on Jupyter. Yes the donut actually spins.

![donutmath](image-4.png)


```Java
import java.util.ArrayList;
import java.util.Collections;

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

ArrayList<ArrayList<Character>> renderFrame(double A, double B) {
    double cos_A = Math.cos(A);
    double sin_A = Math.sin(A);
    double cos_B = Math.cos(B);
    double sin_B = Math.sin(B);

    ArrayList<ArrayList<Character>> output = new ArrayList<>();
    ArrayList<ArrayList<Double>> zbuffer = new ArrayList<>();
    
    // Initialize the output and zbuffer with empty values
    for (int i = 0; i < screen_size; i++) {
        ArrayList<Character> outputRow = new ArrayList<>(Collections.nCopies(screen_size, ' '));
        ArrayList<Double> zbufferRow = new ArrayList<>(Collections.nCopies(screen_size, 0.0));
        output.add(outputRow);
        zbuffer.add(zbufferRow);
    }

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

            if (L_val >= 0 && xp >= 0 && xp < screen_size && yp >= 0 && yp < screen_size && ooz > zbuffer.get(xp).get(yp)) {
                zbuffer.get(xp).set(yp, ooz);
                output.get(xp).set(yp, illumination[L_val % illumination.length]);
            }
        }
    }

    return output;
}

void pprint(ArrayList<ArrayList<Character>> array) {
    for (ArrayList<Character> row : array) {
        for (Character c : row) {
            System.out.print(c);
        }
        System.out.println();
    }
}

public static void main(String[] args) throws InterruptedException {
    long startTime = System.currentTimeMillis();
    final int duration = 10000;
    double A = 1;
    double B = 1;

    while (System.currentTimeMillis() - startTime < duration) {
        A += theta_spacing;
        B += phi_spacing;
        System.out.print("\033[H");
        ArrayList<ArrayList<Character>> frame = new AsciiArtDonut().renderFrame(A, B);
        new AsciiArtDonut().pprint(frame);
        Thread.sleep(30);
    }
}

```

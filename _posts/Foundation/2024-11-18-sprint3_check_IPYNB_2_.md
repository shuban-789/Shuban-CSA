---
layout: post
title: Trimester (1/2) Bridge - Sprint 3
description: Review Ticket for Sprint 3
type: issues
comments: True
---

# Sections

⭐ Section 1: Accomplishments (30 seconds total)
1️⃣ Contributions to CSA Synergy (15 seconds)
2️⃣ Memories from night at the museum (5 seconds)
3️⃣ Soft Skills (10 seconds)

⭐ Section 1: Night at the Museum (30 seconds total)
1️⃣ MCQ Reflection, 1 MCQ (star MCQ) will be reviewed in depth

# Section 1: Night at the Museum

## Contributions

- Contributed to the event calendar
- The goal is to have a place embedded within the rest of CSA synergy where students can upload assignments

⬇️ Fast Demo Video ⬇️


- Half of my backend work is done in my personal repo called calendar_backend, and the other half is done in Grading_CSA_Backend

![s3image3](attachment:image-3.png)

![s3image4](attachment:image-4.png)


- Half of my frontend work is done in my personal repo called calendar_frontend_debug, and the other half is done in Grading_CSA_Frontend

![s3image1](attachment:image.png)

![s3image2](attachment:image-2.png)

## Memories

![s3image5](attachment:image-5.png)

![s3image4](attachment:image-6.png)

## Soft Skills

✅ Improved on public speaking and team teaching
⚙️ Working on constructing concise ways to present my information
❌ Need to work on time management during reviews


# Section 2: MCQ

I will breakdown the entire MCQ but I will only focus on the problem which I feel needs most attention.

## Quick Overview

- Score: 29/40 😢👎
- Most missed question type:
- Star question: Question 34

## MCQ Unpack

### Question 1

```java
public static int mystery(int[] arr)
{
    int x = 0;
    for (int k = 0; k < arr.length; k = k + 2)
        x = x + arr[k]
    return x
}
```
Assume that the array nums has been declared and initialized as follows.
`int [ ] nums = { 3, 6, 1, 0, 1, 4, 2};`
What value will be returned as a result of the call mystery(nums) ?

A 5 ❌
B 6
C 7 ✅
D 10
E 17

Explanation: The program is a simple sum program which is adding every other number in the array. The mistake I made here was I accidentally calculated the value of the um for `k = k + 3`. I really need to read the question closely.

### Question 4

```java
int x = 7;
int y = 3;

if ((x < 10) && (y < 0))
    System.out.println("Value is: " + x * y);
else
    System.out.println("Value is: " + x / y);
```
What is printed as a result of executing the code segment

A Value is: 21
B Value is: 2.333333 ❌
C Value is: 2 ✅
D Value is: 0
E Value is: 1

Explanation: The program uses Java rules of algebra with division. Integer division is used. Unlick Java, floating point devision is not used by default.

### Question 10
Directions: Select the choice that best fits each statement. The following question(s) refer to the following information

Consider the following instance variable and methods. You may assume that data has been initialized with length > 0. The methods are intended to return the index of an array element equal to target, or -1 if no such element exists.

```java
private int[] data;

public int seqSearchRec(int target)
{
    return seqSearchRecHelper(target, data.length - 1);
}

private int seqSearchRecHelper(int target, int last)
{
    // Line 1

    if (data[last] == target)
        return last
    else
    return seqSearchRecHelper(target, last - 1)
}
```

For which of the following test cases will the call seqSearchRec(5) always result in an error?

    I data contains only one element.

    II data does not contain the value 5.

    III data contains the value 5 multiple times.

A I only
B II only ✅
C III only
D I and II only ❌
E I, II, and III

Explanation: Choice I will return the correct value only if the element in the array with one element was `target`. In this case, with the first call to `seqSearchRecHelper`, the value of `data[0]` would be `target` and `0` would be returned.

### Question 18

Assume that myList is an ArrayList that has been correctly constructed and populated with objects. Which of the following expressions produces a valid random index for myList?

A (int) (Math.random()*myList.size()) - 1
B. (int)(Math.random()*myList.size()) ✅
C. (int)(Math.random()*myList.size()) + 1
D. (int)(Math.random()*(myList.size()+1))
E. Math.random(myList.size()) ❌

Explanation: The `Math.random()` method does not take a parameter. This statement will cuase a compile time error

### Question 21

Consider the following method, which is intended to return the element of a 2-dimensional array that is closest in value to a specified number, val.

```java
/** @return the element of a 2-dimensional array mat whose value is closest to val */
public double findClosest(double[][] mat, double val)
{
    double answer = mat[0][0]
    double minDiff = Math.abs(answer - val)
    for (double[] row : mat)
    {
        for (double num : mat)
        {
            if ( /* missing code */)
            {
                answer = num;
                minDiff = Math.abs(num - val)
            }
        }
    }
}
```

Which of the following could be used to replace /* missing code */ so that `findClosest` will work as intended?

A. val - row[num] < minDiff
B. Math.abs(num - minDiff) < minDiff ❌
C. val - num < 0.0
D. Math.abs(num - val) < minDiff ✅
E. Math.abs(row[num] - val) < minDiff

Explanation: To find the value that is closest to `val`, the algorithm needs to calculate the positive difference between `num` and `val`.

### Question 23

Consider the following instance variable and method.

```java
private List<String> animals;

public void manipulate()
{
    for (int k = animals.size() - 1; k > 0; k--)
    {
        if (animals.get(k).substring(0, 1).equals("b"))
        {
            animals.add(animals.size() - k, animals.remove(k))
        }
    }
}
```

Assume that animals has been instantiated and initialized with the following contents. `["bear", "zebra", "bass", "cat", "koala", "baboon"]`

A. ["baboon", "zebra", "bass", "cat", "bear", "koala"]
B. ["bear", "zebra", "bass", "cat", "koala", "baboon"] ✅
C. ["baboon", "bear", "zebra", "bass", "cat", "koala"] ❌
D. ["bear", "baboon", "zebra", "bass", "cat", "koala"]
E. ["zebra", "cat", "koala", "baboon", "bass", "bear"] 

Explanation: List is an interface, whch an `ArrayList` implemements. This would be correct only if the remove occurred before the size was calculated in the statement.

### Question 28

```java
public static int mystery(int n)
{
    int x = 1;
    int y = 1;

    // Point A
    while (n > 2)
    {
        x = x + y
        // Point B

        y = x - y;
    }

    // Point C
    return x;
}
```

A. x will sometimes be 1 at // Point B.
B. x will never be 1 at // Point C. ❌
C. n will never be greater than 2 at // Point A.
D. n will sometimes be greater than 2 at // Point C.
E. n will always be greater than 2 at // Point B. ✅

Explanation: If the value of n is 2 or less in the original call to the method mystery, the loop will be skipped and x will be 1 at Point C

### Question 29

![image-7.png](attachment:image-7.png)

Explanation: This will print `4, 16, 64` since `k` is assigned to the value of `k * 4` for each iteration.

### Question 34 ⭐

```java
public class Point
{
    private double x;
    private double y;

    public Point()
    {
        x = 0;
        y = 0;
    }

    public Point(double a, double b)
    {
        x = a;
        y = b;
    }
}

public class Circle
{
    private Point center;
    private double radius;

    public Circle(double a, double b, double r)
    {
        // Missing code
    }
}
```

Which of the following replacements for `/* missing code*/` will correctly implement the Circle constructor?

I. 
```java
center = new Point();
radius = r;
```

II.
```java
center = new Point(a, b);
radius = r;
```

III.
```java
center = new Point();
center.x = a;
center.y = b;
radius = r;
```

A. I only
B. II only ✅
C. III only
D. II and III only ❌
E. I, II, and III

Explanation: Choice III uses the default `Point` constructor to assign `center` a new `Point` with `x` and `y` both equal to `0`. It attempts to update `x` and `y`, however since they are private instance variables in `Point`, they are not able to be accessed directly in `Circle`. This code will cause a compile time error.

### Question 39

Consider the following recursive method
```java
public int recur(int n)
{
    if (n <= 10)
        return n*2;
    else
        return recur(recur(n/3));
}
```

What value is returned as a result of the call `recur(27)`

A. 8
B. 9
C. 12
D. 16 ✅
E. 18 ❌

Explanation: The value of `recur(9)` is 18. However, this call was made withing another recursive call and is not the final return value

### Question 40

Consider the following recursive method
```java
public static void whatsItDo(String str)
{
    int len = str.length();
    if (len > 1)
    {
        String temp = str.substring(0, len - 1)
        whatsItDo(temp);
        System.out.println(temp);
    }
}
```

What is printed as a result of the call `whatsItDo("WATCH")`

![image-8.png](attachment:image-8.png)

Explanation: This would be the output if `System.out.println(temp)` was before the recursive call to `whatsItDo(temp)`. When the recursive call `whatsItDo(temp)` is executed, the current sequence of statements are paused

### Closing remarks




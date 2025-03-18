---
toc: False
layout: post
title: Abstract Fibonaccii Hack
description: A Fibonacci algorithm that runs using an abstract parent class.
courses: {'csa': {'week': 25}}
type: ccc
image: /images/data_structures/fibonacci.png
---

![abstract]({{site.baseurl}}/images/data_structures/fibonacci.png)

## Introduction

This notebook uses Class definitions, ArrayLists, and Hash Maps.   My hypothosis is these data structures are probably the most widely used in the Java language.

### Popcorn Hacks

- Provide some reasons why you agree with my hypothesis?

- Provide some data structures that you think might rival my hypothesis?

- Categorize data structure mentioned, tested by college board tested, widely used, fast.



```Java
/*
 * Creator: Nighthawk Coding Society
 * Mini Lab Name: Fibonacci sequence, featuring a Stream Algorithm
 * 
*/

import java.util.ArrayList;  
import java.util.HashMap;
import java.util.stream.Stream;

/* Objective will require changing to abstract class with one or more abstract methods below */
abstract class Fibo {
    String name;  // name or title of method
    int size;  // nth sequence
    int hashID;  // counter for hashIDs in hash map
    ArrayList<Long> list;   // captures current Fibonacci sequence
    HashMap<Integer, Object> hash;  // captures each sequence leading to final result

    /*
     Zero parameter constructor uses Telescoping technique to allow setting of the required value nth
     @param: none
     */
    public Fibo() {
        this(8); // telescope to avoid code duplication, using default as 21
    }

    /*
     Construct the nth fibonacci number
     @param: nth number, the value is constrained to 92 because of overflow in a long
     */
    public Fibo(int nth) {
        this.size = nth;
        this.list = new ArrayList<>();
        this.hashID = 0;
        this.hash = new HashMap<>();
        //calculate fibonacci and time mvc
        this.calc();
    }

    /*
     This Method should be "abstract"
     Leave method as protected, as it is only authorized to extender of the class
     Make new class that extends and defines calc()
     Inside references within this class would change from this to super
     Repeat process using for, while, recursion
     */
    protected abstract void calc();

    /*
     Number is added to fibonacci sequence, current state of "list" is added to hash for hashID "num"
     */
    public void setData(long num) {
        list.add(num);
        hash.put(this.hashID++, list.clone());
    }

    /*
     Custom Getter to return last element in fibonacci sequence
     */
    public long getNth() {
        return list.get(this.size - 1);
    }

    /*
     Custom Getter to return last fibonacci sequence in HashMap
     */
    public Object getNthSeq(int i) {
        return hash.get(i);
    }

    /*
     Console/Terminal supported print method
     */
    public void print() {
        System.out.println("Calculation method = " + this.name);
        System.out.println("fibonacci Number " + this.size + " = " + this.getNth());
        System.out.println("fibonacci List = " + this.list);
        System.out.println("fibonacci Hashmap = " + this.hash);
        for (int i=0 ; i<this.size; i++ ) {
            System.out.println("fibonacci Sequence " + (i+1) + " = " + this.getNthSeq(i));
        }
    }
}
```


```Java

public class FiboFor extends Fibo {

    public FiboFor() {
        super();
    }

    public FiboFor(int nth) {
        super(nth);
    }

    @Override
    protected void calc() {
        super.name = "FiboFor extends Fibo";
        long limit = this.size;
        // for loops are likely the most common iteration structure, all the looping facts are in one line
        for (long[] f = new long[]{0, 1}; limit-- > 0; f = new long[]{f[1], f[0] + f[1]})
            this.setData(f[0]);
    }

    /*
    Tester class method.
     */
    static public void main(int... numbers) {
        for (int nth : numbers) {
            Fibo fib = new FiboFor(nth);
            fib.print();
            System.out.println();
        }
    }
}

FiboFor.main(2, 5, 8);

```

    Calculation method = FiboFor extends Fibo
    fibonacci Number 2 = 1
    fibonacci List = [0, 1]
    fibonacci Hashmap = {0=[0], 1=[0, 1]}
    fibonacci Sequence 1 = [0]
    fibonacci Sequence 2 = [0, 1]
    
    Calculation method = FiboFor extends Fibo
    fibonacci Number 5 = 3
    fibonacci List = [0, 1, 1, 2, 3]
    fibonacci Hashmap = {0=[0], 1=[0, 1], 2=[0, 1, 1], 3=[0, 1, 1, 2], 4=[0, 1, 1, 2, 3]}
    fibonacci Sequence 1 = [0]
    fibonacci Sequence 2 = [0, 1]
    fibonacci Sequence 3 = [0, 1, 1]
    fibonacci Sequence 4 = [0, 1, 1, 2]
    fibonacci Sequence 5 = [0, 1, 1, 2, 3]
    
    Calculation method = FiboFor extends Fibo
    fibonacci Number 8 = 13
    fibonacci List = [0, 1, 1, 2, 3, 5, 8, 13]
    fibonacci Hashmap = {0=[0], 1=[0, 1], 2=[0, 1, 1], 3=[0, 1, 1, 2], 4=[0, 1, 1, 2, 3], 5=[0, 1, 1, 2, 3, 5], 6=[0, 1, 1, 2, 3, 5, 8], 7=[0, 1, 1, 2, 3, 5, 8, 13]}
    fibonacci Sequence 1 = [0]
    fibonacci Sequence 2 = [0, 1]
    fibonacci Sequence 3 = [0, 1, 1]
    fibonacci Sequence 4 = [0, 1, 1, 2]
    fibonacci Sequence 5 = [0, 1, 1, 2, 3]
    fibonacci Sequence 6 = [0, 1, 1, 2, 3, 5]
    fibonacci Sequence 7 = [0, 1, 1, 2, 3, 5, 8]
    fibonacci Sequence 8 = [0, 1, 1, 2, 3, 5, 8, 13]
    



```Java
public class FiboStream extends Fibo {

    public FiboStream() {
        super();
    }

    public FiboStream(int nth) {
        super(nth);
    }

    @Override
    protected void calc() {
        super.name = "FiboStream extends Extends";

        // Initial element of stream: new long[]{0, 1}
        // Lambda expression calculate the next fibo based on the current: f -> new long[]{f[1], f[0] + f[1]}
        Stream.iterate(new long[]{0, 1}, f -> new long[]{f[1], f[0] + f[1]})
            .limit(super.size) // stream limit
            .forEach(f -> super.setData(f[0]) );  // set data in super class
    }

    /*
    Tester class method.
     */
    static public void main(int... numbers) {
        for (int nth : numbers) {
            Fibo fib = new FiboFor(nth);
            fib.print();
            System.out.println();
        }
    }
}

FiboStream.main(2, 5, 8);
```

    Calculation method = FiboFor extends Fibo
    fibonacci Number 2 = 1
    fibonacci List = [0, 1]
    fibonacci Hashmap = {0=[0], 1=[0, 1]}
    fibonacci Sequence 1 = [0]
    fibonacci Sequence 2 = [0, 1]
    
    Calculation method = FiboFor extends Fibo
    fibonacci Number 5 = 3
    fibonacci List = [0, 1, 1, 2, 3]
    fibonacci Hashmap = {0=[0], 1=[0, 1], 2=[0, 1, 1], 3=[0, 1, 1, 2], 4=[0, 1, 1, 2, 3]}
    fibonacci Sequence 1 = [0]
    fibonacci Sequence 2 = [0, 1]
    fibonacci Sequence 3 = [0, 1, 1]
    fibonacci Sequence 4 = [0, 1, 1, 2]
    fibonacci Sequence 5 = [0, 1, 1, 2, 3]
    
    Calculation method = FiboFor extends Fibo
    fibonacci Number 8 = 13
    fibonacci List = [0, 1, 1, 2, 3, 5, 8, 13]
    fibonacci Hashmap = {0=[0], 1=[0, 1], 2=[0, 1, 1], 3=[0, 1, 1, 2], 4=[0, 1, 1, 2, 3], 5=[0, 1, 1, 2, 3, 5], 6=[0, 1, 1, 2, 3, 5, 8], 7=[0, 1, 1, 2, 3, 5, 8, 13]}
    fibonacci Sequence 1 = [0]
    fibonacci Sequence 2 = [0, 1]
    fibonacci Sequence 3 = [0, 1, 1]
    fibonacci Sequence 4 = [0, 1, 1, 2]
    fibonacci Sequence 5 = [0, 1, 1, 2, 3]
    fibonacci Sequence 6 = [0, 1, 1, 2, 3, 5]
    fibonacci Sequence 7 = [0, 1, 1, 2, 3, 5, 8]
    fibonacci Sequence 8 = [0, 1, 1, 2, 3, 5, 8, 13]
    


## Popcorn Hacks
Objectives of these hacks are ...

1. Understand how to fullfill abstract class requirements using two additional algoritms.
2. Use inheritance style of programming to test speed of each algorithm.  To test the speed, a.) be aware that the first run is always the slowest b.) to time something, my recommendation is 12 runs on the timed element, through out highest and lowest time in calculations.
3. Be sure to make a tester and reporting methods.

.85 basis for text based comparison inside of Jupyter Notebook lesson

## Hacks
Assign in each Team to build a Thymeleaf UI for portfolio_2025 using this example https://thymeleaf.nighthawkcodingsociety.com/mvc/fibonacci as basis.  Encorporate into Algorithms menu.

Since there are three teams, one team can do Fibo, others Pali and Factorial.  Assign this to people that are struggling for contribution and presentation to checkpoints.

.90 basis for FE presentation in Thymmeleaf to BE call in Spring


```Java
public class Fibonacci {
    public static long fibonacci(int n) {
        if (n < 0) return -1;
        if (n == 0) return 0;
        if (n == 1) return 1;

        long prev1 = 0, prev2 = 1, result = 0;

        for (int i = 2; i <= n; i++) {
            result = prev1 + prev2;
            prev1 = prev2;
            prev2 = result;
        }

        return result;
    }

    public static void main(String[] args) {
        int n = 6;
        System.out.println("WARNING: If fibbonacci returns -1, the input is invalid.");
        System.out.println("Fibonacci(" + n + ") = " + fibonacci(n));
    }
}

Fibonacci.main(null);
```

    WARNING: If fibbonacci returns -1, the input is invalid.
    Fibonacci(6) = 8



```Java
public class Fibonacci2 {

    // Fast doubling method (non-recursive)
    public static long fibonacci(int n) {
        if (n < 0) throw new IllegalArgumentException("Input must be non-negative.");
        if (n == 0) return 0;
        if (n == 1) return 1;

        long a = 0; // F(0)
        long b = 1; // F(1)

        for (int bit = Integer.highestOneBit(n); bit != 0; bit >>>= 1) {
            long c = a * ((b << 1) - a); // F(2k) = F(k) * (2F(k+1) - F(k))
            long d = a * a + b * b;      // F(2k+1) = F(k)^2 + F(k+1)^2
            a = c;
            b = d;

            if ((n & bit) != 0) { // If this bit is set, move to the next Fibonacci number
                long next = a + b;
                a = b;
                b = next;
            }
        }

        return a;
    }

    public static void main(String[] args) {
        int n = 8;
        System.out.println("Fibonacci(" + n + ") = " + fibonacci(n));
    }
}

Fibonacci2.main(null);
```

    Fibonacci(8) = 21



```Java
/* Base Fibonacci class --> Helps visualize fibo*/
abstract class Fibo {
    protected int nth;
    protected String name;

    public Fibo(int nth) {
        this.nth = nth;
        calc();
    }

    protected abstract void calc();

    protected void setData(long result) {

        System.out.print(result + " ");
    }
}

/* Iterative Fibonacci implementation */
class FiboIterative extends Fibo {
    public FiboIterative(int nth) {
        super(nth);
    }

    @Override
    protected void calc() {
        super.name = "Iterative Fibonacci";
        long prev1 = 0, prev2 = 1;

        this.setData(prev1);
        if (nth > 1) this.setData(prev2);

        for (int i = 2; i < nth; i++) {
            long result = prev1 + prev2;
            this.setData(result);
            prev1 = prev2;
            prev2 = result;
        }
    }
}

/* Fast Doubling Fibonacci implementation */
class FiboFastDoubling extends Fibo {
    public FiboFastDoubling(int nth) {
        super(nth);
    }

    @Override
    protected void calc() {
        super.name = "Fast Doubling Fibonacci";
        long a = 0, b = 1;

        this.setData(a);
        if (nth > 1) this.setData(b);

        for (int bit = Integer.highestOneBit(nth); bit != 0; bit >>>= 1) {
            long c = a * ((b << 1) - a);
            long d = a * a + b * b;
            a = c;
            b = d;

            if ((nth & bit) != 0) {
                long nextA = a + b;
                a = b;
                b = nextA;
            }
        }

        this.setData(a); // Store the final result
    }
}

/* Timing & Testing */
class FibonacciTest {
    public static void main(String[] args) {
        int n = 40; // Adjust size for testing

        System.out.println("\nTesting Iterative Fibonacci:");
        testAndTime(() -> new FiboIterative(n));

        System.out.println("\nTesting Fast Doubling Fibonacci:");
        testAndTime(() -> new FiboFastDoubling(n));
    }

    public static void testAndTime(Runnable method) {
        long[] times = new long[12];

        for (int i = 0; i < 12; i++) {
            long start = System.nanoTime();
            method.run();
            long end = System.nanoTime();
            times[i] = end - start;
        }

        java.util.Arrays.sort(times);
        long sum = 0;
        for (int i = 1; i < 11; i++) sum += times[i];

        long avgTime = sum / 10;
        System.out.println("\nAverage Execution Time: " + avgTime + " ns");
    }
}

FibonacciTest.main(null);
```

    
    Testing Iterative Fibonacci:
    0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597 2584 4181 6765 10946 17711 28657 46368 75025 121393 196418 317811 514229 832040 1346269 2178309 3524578 5702887 9227465 14930352 24157817 39088169 63245986 0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597 2584 4181 6765 10946 17711 28657 46368 75025 121393 196418 317811 514229 832040 1346269 2178309 3524578 5702887 9227465 14930352 24157817 39088169 63245986 0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597 2584 4181 6765 10946 17711 28657 46368 75025 121393 196418 317811 514229 832040 1346269 2178309 3524578 5702887 9227465 14930352 24157817 39088169 63245986 0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597 2584 4181 6765 10946 17711 28657 46368 75025 121393 196418 317811 514229 832040 1346269 2178309 3524578 5702887 9227465 14930352 24157817 39088169 63245986 0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597 2584 4181 6765 10946 17711 28657 46368 75025 121393 196418 317811 514229 832040 1346269 2178309 3524578 5702887 9227465 14930352 24157817 39088169 63245986 0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597 2584 4181 6765 10946 17711 28657 46368 75025 121393 196418 317811 514229 832040 1346269 2178309 3524578 5702887 9227465 14930352 24157817 39088169 63245986 0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597 2584 4181 6765 10946 17711 28657 46368 75025 121393 196418 317811 514229 832040 1346269 2178309 3524578 5702887 9227465 14930352 24157817 39088169 63245986 0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597 2584 4181 6765 10946 17711 28657 46368 75025 121393 196418 317811 514229 832040 1346269 2178309 3524578 5702887 9227465 14930352 24157817 39088169 63245986 0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597 2584 4181 6765 10946 17711 28657 46368 75025 121393 196418 317811 514229 832040 1346269 2178309 3524578 5702887 9227465 14930352 24157817 39088169 63245986 0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597 2584 4181 6765 10946 17711 28657 46368 75025 121393 196418 317811 514229 832040 1346269 2178309 3524578 5702887 9227465 14930352 24157817 39088169 63245986 0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597 2584 4181 6765 10946 17711 28657 46368 75025 121393 196418 317811 514229 832040 1346269 2178309 3524578 5702887 9227465 14930352 24157817 39088169 63245986 0 1 1 2 3 5 8 13 21 34 55 89 144 233 377 610 987 1597 2584 4181 6765 10946 17711 28657 46368 75025 121393 196418 317811 514229 832040 1346269 2178309 3524578 5702887 9227465 14930352 24157817 39088169 63245986 
    Average Execution Time: 988899 ns
    
    Testing Fast Doubling Fibonacci:
    0 1 102334155 0 1 102334155 0 1 102334155 0 1 102334155 0 1 102334155 0 1 102334155 0 1 102334155 0 1 102334155 0 1 102334155 0 1 102334155 0 1 102334155 0 1 102334155 
    Average Execution Time: 67929 ns


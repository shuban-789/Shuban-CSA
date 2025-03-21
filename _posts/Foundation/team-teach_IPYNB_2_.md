---
title: Sorting/Searching Algorithms - Sorting Lesson
description: A lesson on sorting algorithms for AP Computer Science students.
categories: ['Sorting/Searching Algorithms']
type: ccc
courses: {'csa': {'week': 20}}
comments: True
---

# **Sorting Algorithms**

# **1. Bubble Sorting**
Bubble sort is a simple sorting algorithm that repeatedly steps through the list, compares adjacent elements and swaps them if they are in the wrong order. The pass through the list is repeated until the list is sorted. It starts by taking the first two integers in a list of integers and compares them, if the first integer is greater than the second integer, it swaps them. It then moves to the next pair of integers and does the same. Once it finishes one loop through, it shifts the comparison to the second and third integers and so on. It continues to loop through the list until no more swaps are needed and the list is sorted.
![Bubble Sorting](https://www.computersciencebytes.com/wp-content/uploads/2016/10/bubble_sort.png)


## Code Example:


```Java
public class SortingLesson {
    public static void main(String[] args) {
        int[] list = {28, 12, 18, 8, 30, 3, 17, 14};
        
        System.out.println("Sorting process:");
        for (int i = 0; i < list.length - 1; i++) {
            for (int j = 0; j < list.length - i - 1; j++) {
                if (list[j] > list[j + 1]) {
                    int temp = list[j];
                    list[j] = list[j + 1];
                    list[j + 1] = temp;
                    
                    printArray(list);
                }
            }
        }
        
        System.out.println("\nFinal sorted list:");
        printArray(list);
    }

    private static void printArray(int[] array) {
        for (int num : array) {
            System.out.print(num + " ");
        }
        System.out.println();
    }
}


SortingLesson.main(new String[]{});


```

    Sorting process:
    12 28 18 8 30 3 17 14 
    12 18 28 8 30 3 17 14 
    12 18 8 28 30 3 17 14 
    12 18 8 28 3 30 17 14 
    12 18 8 28 3 17 30 14 
    12 18 8 28 3 17 14 30 
    12 8 18 28 3 17 14 30 
    12 8 18 3 28 17 14 30 
    12 8 18 3 17 28 14 30 
    12 8 18 3 17 14 28 30 
    8 12 18 3 17 14 28 30 
    8 12 3 18 17 14 28 30 
    8 12 3 17 18 14 28 30 
    8 12 3 17 14 18 28 30 
    8 3 12 17 14 18 28 30 
    8 3 12 14 17 18 28 30 
    3 8 12 14 17 18 28 30 
    
    Final sorted list:
    3 8 12 14 17 18 28 30 


# **2. Selection Sorting**
Selection sort is a simple sorting algorithm that works by selecting the smallest (or largest, depending on sorting order) element from the list and swapping it with the first unsorted element. The algorithm then finds the second smallest element and swaps it with the second unsorted element, and continues in this way until the entire list is sorted. It is similar to bubble sort, but it is more efficient as it reduces the number of swaps.
![Selection Sorting](https://he-s3.s3.amazonaws.com/media/uploads/2888f5b.png)


```Java
public class SelectionSort {
    public static void main(String[] args) {
        int[] list = {28, 12, 18, 8, 30, 3, 17, 14};
        
        System.out.println("Sorting process:");
        for (int currentIndex = 0; currentIndex < list.length - 1; currentIndex++) {
            int minIndex = currentIndex;
            
            // Find the minimum element in the unsorted part
            for (int i = currentIndex + 1; i < list.length; i++) {
                if (list[i] < list[minIndex]) {
                    minIndex = i;
                }
            }
            
            // Swap the current element with the minimum element
            int temp = list[currentIndex];
            list[currentIndex] = list[minIndex];
            list[minIndex] = temp;

            // Print the array after each swap
            printArray(list);
        }
        
        System.out.println("\nFinal sorted list:");
        printArray(list);
    }

    // Helper method to print the array
    private static void printArray(int[] array) {
        for (int num : array) {
            System.out.print(num + " ");
        }
        System.out.println();
    }
}

SelectionSort.main(new String[]{});
```

    Sorting process:
    3 12 18 8 30 28 17 14 
    3 8 18 12 30 28 17 14 
    3 8 12 18 30 28 17 14 
    3 8 12 14 30 28 17 18 
    3 8 12 14 17 28 30 18 
    3 8 12 14 17 18 30 28 
    3 8 12 14 17 18 28 30 
    
    Final sorted list:
    3 8 12 14 17 18 28 30 


# **3. Quick Sorting**
Quick sort is a efficient, in-place sorting algorithm that allows for general-purpose sorting of large datasets. Its generally faster than commonly used sorting methods like Merge Sort or heapsort. It works by selecting a 'pivot' element from the array and partitioning the other elements into two sub-arrays, according to whether they are less than or greater than the pivot. For this reason, it is sometimes called partition-exchange sort.
![Quick Sorting](https://afteracademy.com/images/quick-sort-example-recursion-tree-c74167d4ee973e77.png)

## Code Example:


```Java
public class QuickSort {
    public static void main(String[] args) {
        int[] list = {28, 12, 18, 8, 30, 3, 17, 14};
        
        System.out.println("Sorting process:");
        quickSort(list, 0, list.length - 1);
        
        System.out.println("\nFinal sorted list:");
        printArray(list);
    }

    private static void quickSort(int[] list, int low, int high) {
        if (low < high) {
            int pivotIndex = partition(list, low, high);
            printArray(list);
            quickSort(list, low, pivotIndex - 1);
            quickSort(list, pivotIndex + 1, high);
        }
    }
    
    private static int partition(int[] list, int low, int high) {
        int pivot = list[high];
        int i = low - 1;
        
        for (int j = low; j < high; j++) {
            if (list[j] <= pivot) {
                i++;
                int temp = list[i];
                list[i] = list[j];
                list[j] = temp;
            }
        }
        
        int temp = list[i + 1];
        list[i + 1] = list[high];
        list[high] = temp;
        
        return i + 1;
    }

    private static void printArray(int[] array) {
        for (int num : array) {
            System.out.print(num + " ");
        }
        System.out.println();
    }
}

QuickSort.main(new String[]{});

```

    Sorting process:
    12 8 3 14 30 18 17 28 
    3 8 12 14 30 18 17 28 
    3 8 12 14 30 18 17 28 
    3 8 12 14 18 17 28 30 
    3 8 12 14 17 18 28 30 
    
    Final sorted list:
    3 8 12 14 17 18 28 30 


# **4. Insertion Sorting**

Insertion sort is a simple sorting algorithm that builds the final sorted array (or list) one item at a time. It is much less efficient on large lists than more advanced algorithms such as quicksort, heapsort, or merge sort. However, insertion sort provides several advantages: simple implementation, efficient for (quite) small data sets, more efficient in practice than most other simple quadratic (i.e., O(n2)) algorithms such as selection sort or bubble sort, adaptive, stable, in-place, online, and can be made stable.
![Insertion Sorting](https://media.geeksforgeeks.org/wp-content/uploads/20240802210251/Insertion-sorting.png)

## Code Example:


```Java
public class InsertionSort {
    public static void main(String[] args) {
        int[] list = {28, 12, 18, 8, 30, 3, 17, 14};
        
        System.out.println("Sorting process:");
        
        // Insertion sort algorithm
        for (int i = 1; i < list.length; i++) {
            int currentValue = list[i];
            int j = i - 1;
            
            // Shift larger elements to the right
            while (j >= 0 && list[j] > currentValue) {
                list[j + 1] = list[j];
                j--;
            }
            
            // Place the current value in the correct position
            list[j + 1] = currentValue;
            
            // Print the list after each insertion
            for (int k = 0; k < list.length; k++) {
                System.out.print(list[k] + " ");
            }
            System.out.println();  // New line after each pass
        }

        // Final sorted list
        System.out.println("Sorted array:");
        for (int num : list) {
            System.out.print(num + " ");
        }
    }
}

InsertionSort.main(new String[]{});
```

    Sorting process:
    12 28 18 8 30 3 17 14 
    12 18 28 8 30 3 17 14 
    8 12 18 28 30 3 17 14 
    8 12 18 28 30 3 17 14 
    3 8 12 18 28 30 17 14 
    3 8 12 17 18 28 30 14 
    3 8 12 14 17 18 28 30 
    Sorted array:
    3 8 12 14 17 18 28 30 

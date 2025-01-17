---
layout: post
title: Homework
categories: ['AP CSA']
menu: nav/CSA_Units/frqs/methods_per3.html
permalink: /methods_per3/homework
---

# Team Teach Homework

# **Maze Solver Problem**

## **Instructions**


Your task is to write a method `solveMaze(char[][] maze, int startX, int startY)` that determines whether a path exists from a starting point `(startX, startY)` in a 2D maze to the exit marked as `'E'`. Use recursion to explore the maze.

---

## **Requirements**

### **Input**


- A 2D array of characters (`char[][] maze`) representing the maze.  


- An integer `startX` indicating the row index of the starting point.  


- An integer `startY` indicating the column index of the starting point.

### **Output**


- Return `true` if there is a path from `(startX, startY)` to `'E'`.  


- Return `false` if no such path exists.



### **Maze Rules**


- `' '` represents an open path (you can move here).  


- `'#'` represents a wall (you cannot move here).  


- `'E'` represents the exit (this is the destination).  

### **Movement**


- You can move **up**, **down**, **left**, or **right** to adjacent cells.  


- You cannot move diagonally or leave the bounds of the maze.  


### **Marking Visited Cells**


- To avoid revisiting the same cells, mark visited cells as `'#'` temporarily during recursion. Restore them to `' '` after backtracking.

---

## **Steps to Solve**


1. Check if the current position is valid:


   - Is it within the bounds of the maze?


   - Is it an open path or the exit?


2. Check if the current position is `'E'`. If yes, return `true`.


3. Mark the current cell as visited (change it to `'#'`).


4. Recursively explore all possible directions (up, down, left, right).


5. If any direction leads to the exit, return `true`.


6. Restore the cell to `' '` after exploring (backtracking).


7. If no paths lead to the exit, return `false`.

---


```java
public class MazeSolver {
    public static boolean solveMaze(char[][] maze, int x, int y) {
        if (x < 0 || y < 0 || x >= maze.length || y >= maze[0].length || maze[x][y] == '#' || maze[x][y] == 'x') {
            return false;
        }

        if (maze[x][y] == 'E') {
            return true;
        }

        maze[x][y] = 'x';

        if (solveMaze(maze, x + 1, y)) {
            return true;
        }
        if (solveMaze(maze, x - 1, y)) {
            return true;
        }
        if (solveMaze(maze, x, y + 1)) {
            return true;
        }
        if (solveMaze(maze, x, y - 1)) {
            return true;
        }
        if (solveMaze(maze, x + 1, y + 1)) {
            return true;
        }
        if (solveMaze(maze, x + 1, y - 1)) {
            return true;
        }
        if (solveMaze(maze, x - 1, y + 1)) {
            return true;
        }
        if (solveMaze(maze, x - 1, y - 1)) {
            return true;
        }

        maze[x][y] = ' ';
        return false;
    }

    public static void main(String[] args) {
        char[][] maze = {
            {'#', '#', '#', '#', '#'},
            {'#', ' ', ' ', '#', 'E'},
            {'#', ' ', '#', ' ', '#'},
            {'#', ' ', ' ', ' ', '#'},
            {'#', '#', '#', '#', '#'}
        };

        boolean result = solveMaze(maze, 1, 1);
        System.out.println("Maze solved: " + result);

        for (char[] row : maze) {
            for (char cell : row) {
                System.out.print(cell + " ");
            }
            System.out.println();
        }
    }
}


MazeSolver solver = new MazeSolver();
solver.main(new String[0]);
```

    Maze solved: true
    # # # # # 
    # x   # E 
    # x # x # 
    # x x x # 
    # # # # # 


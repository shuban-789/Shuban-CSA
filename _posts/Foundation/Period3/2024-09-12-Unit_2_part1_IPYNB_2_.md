---
layout: post
title: Unit 2 — Objects & Void Methods
description: An introduction to objects and void methods.
type: collab
toc: True
permalink: /csa/unit2/period3/part1/
menu: nav/CSA_Units/unit2/period3.html
comments: True
author: Aadit Mathur, Eric Yu, Shuban Pal, Rahul Verma
---

# Objects

## What are objects?

Brief note: The text here is useful for following along and reviewing after the lesson. However, for the best experience, I'd recommend you simply pay attention to the presentation and run the code as you go.

Let's say we have a book. This book has several properties, such as a title, author, and publisher. We can represent this with a few variables in our code.

<img src="https://github.com/user-attachments/assets/68ca47b5-caa1-40c1-9e9b-394577621769" alt="image" width="70%" />



```java
class Main {
    public static void main(String[] args) {
        String title = "The Guide to Failure";
        String author = "Aadit Mathur";
        String publisher = "The Crusaders of FreeBSD";
        String content = "...";

        System.out.println("The title of the book is " + title);
        System.out.println("The author of the book is " + author);
        System.out.println("The publisher of the book is " + publisher);
    }
}

Main.main(new String[]{});
```

That's all well and dandy, until we want to add another book.


```java
class Main {
    public static void main(String[] args) {
        String book1_title = "The Guide to Failure";
        String book1_author = "Aadit Mathur";
        String book1_publisher = "The Crusaders of FreeBSD";
        String book1_content = "..."; // placeholder

        System.out.println("The title of the book is " + book1_title);
        System.out.println("The author of " + book1_title + " is " + book1_author);
        System.out.println("The publisher of " + book1_title + " is " + book1_publisher);

        String book2_title = "The Tragedy of Mr. Mortensen, Teacher of A101";
        String book2_author = "Shuban Pal";
        String book2_publisher = "The Crusaders of FreeBSD";
        String book2_content = "...";

        System.out.println("The title of the book is " + book2_title);
        System.out.println("The author of " + book2_title + " is " + book2_author);
        System.out.println("The publisher of " + book2_title + " is " + book2_publisher);
    }
}

Main.main(new String[]{});
```

Within a second, our simple program has turned into a mess. Also, although we named our variables in a wway that allows us to see that theyre related, it would be nice if we could group these attributes together.

### Introducing... classes! ✨
Classes are a way for us to logically group these attributes and behaviors together. 😋


```java
class Book {
    public String title;
    public String author;
    public String publisher;
    public String content;
    public int pages;

    public Book(String title, String author, String publisher, String content, int pages) {
        this.title = title;
        this.author = author;
        this.publisher = publisher;
        this.content = content;
        this.pages = pages;
    }

    public Book(String title, String author, String publisher, String content) {
        this.title = title;
        this.author = author;
        this.publisher = publisher;
        this.content = content;
        this.pages = 0;
    }
}

class Main {
    public static void main(String[] args) {
        Book book1 = new Book("The Guide to Failure", "Aadit Mathur", "Crusaders of FreeBSD", "...", 50);
        
        System.out.println("The title of the book is " + book1.title);
        System.out.println("The author of " + book1.title + " is " + book1.author);
        System.out.println("The publisher of " + book1.title + " is " + book1.publisher);
        
        Book book2 = new Book(
            "The Tragedy of Mr. Mortensen, Teacher of A101",
            "Shuban Pal",
            "Crusaders of FreeBSD",
            "..."
        );

        System.out.println("The title of the book is " + book2.title);
        System.out.println("The author of " + book2.title + " is " + book2.author);
        System.out.println("The publisher of " + book2.title + " is " + book2.publisher);
    }
}

Main.main(new String[]{});
```

There are a few things to note here:
- **Classes as Blueprints**: The class, Book, acts as a blueprint for creating objects, such as our book, "The Guide to Failure"
- **Objects**: These are different `Book`s made using our "blueprint"
  - Each of these books (i.e. the things made using our class) are usually called "instances" of the class
- **Types**: The `Book` class is a type that can be used like something such as a `String`
- **The `new` Keyword**: This allows us to create an object of type `Book`
- **Constructors**: When we make a `new Book()`, the arguments passed in are matched to the correct constructor, a special function which creates a new instance
- **Class-wide variables**: These variables can be accessed with the dot operator
- **Dot operator**: Allows us to access class variables
- **The `this` Keyword**: Allows us to access class variables from inside the class

As you can see, classes allows us to create repeated objects without wasting so many lines of code! In the grand scheme of software development, this greatly helps simplify our code. Even if right now it may seem useless, it is extremely important in the long run.

![image](https://github.com/user-attachments/assets/c1b8a119-2ed3-408c-81ec-b4124c3e8cff)

## PRACTICE: Objects
Now, we'll see if you understand the concept of classes and objects.

Try and create a class in the following code space to represent a dog.


```java
class Dog {
    ...
}

public class Main {
    public static void main(String[] args) {
        Dog myDog = new Dog("Shelby", "Golden Retriever", 5); // name, breed, age
        myDog.bark(); // should print "Woof!"
    }
}
```

### Non-Void Methods
Objects can group attributes together, but they can also group together behaviors. Let's see an example.


```java
class Book {
    public String title;
    public String author;
    public String publisher;
    public String content;
    public int pages;

    public Book(String title, String author, String publisher, String content, int pages) {
        this.title = title;
        this.author = author;
        this.publisher = publisher;
        this.content = content;
        this.pages = pages;
    }

    public Book(String title, String author, String publisher, String content) {
        this.title = title;
        this.author = author;
        this.publisher = publisher;
        this.content = content;
        this.pages = 0;
    }

    public void printInformation() {
        System.out.println("The book \"" + this.title + "\", written by " + this.author + " and published by " + this.publisher + " has " + Integer.toString(this.pages) + " pages.");
    }
    
    public void printPage(int page, int charactersPerPage) {
        page -= 1;
        String pageContent = this.content.substring(charactersPerPage * page, charactersPerPage * (page+1));
        System.out.println(pageContent);
    }
}

public class Main {
    public static void main(String[] args) {
        Book myFaveBook = new Book(
            "The Tragedy of Mr. Mortensen, Teacher of A101",
            "Shuban Pal",
            "Crusaders of FreeBSD",
            "A child is a monkey in its mother's eye. Yet that child dreams of going on a wild journey, far beyond her reach."
            5
        );
        
        myFaveBook.printPage(1, 18);
        myFaveBook.printInformation();
    }
}
```

Here, we were able to make our code much more readable. In addition, if we have more books in the future, it's likely that we'll reuse these functions. 😮 💨 😮 💨 😮 💨


**Void Methods** are functions in classes which have no return value.

❓ What is a return value? That's a surprise tool we'll save for later! 🤫🤫🤫

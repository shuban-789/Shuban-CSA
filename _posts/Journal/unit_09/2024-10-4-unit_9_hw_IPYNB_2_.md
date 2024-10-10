---
layout: post
toc: True
title: Unit 8 - Homework
description: Unit 8 Period 3 Homework
authors: Shuban Pal
---

### Popcorn Hack 1


```Java
public class Shape {
    protected String name;
    private int length;
    private int width;

    // Default constructor
    public Shape() {
        this.name = "Shape";
        this.length = 20;
        this.width = 5;
    }

    // Parameterized constructor
    public Shape(String name, int length, int width) {
        this.name = name;
        this.length = length;
        this.width = width;
    }

    // Getter methods
    public String get_name() {
        return this.name;
    }

    public int get_length() {
        return this.length;
    }

    public int get_width() {
        return this.width;
    }

    // Setter methods
    public void set_name(String n) {
        this.name = n;
    }

    public void set_length(int a) {
        this.length = a;
    }

    public void set_width(int b) {
        this.width = b;
    }

    // toString method
    @Override
    public String toString() {
        return "Shape: " + this.name + " (Length: " + this.length + ", Width: " + this.width + ")";
    }
}

public class Circle extends Shape {
    public Circle() {
        super();
    }

    public Circle(String name, int radius) {
        super(name, radius, radius);
    }

    @Override
    public String toString() {
        return "Circle: " + this.name + " (Radius: " + get_length() + ")";
    }
}

public class Hexagon extends Shape {
    public Hexagon() {
        super();
    }

    public Hexagon(String name, int sideLength) {
        super(name, sideLength, sideLength);
    }

    @Override
    public String toString() {
        return "Hexagon: " + this.name + " (Side Length: " + get_length() + ")";
    }
}

// Main method to test the classes
public class Main {
    public static void main(String[] args) {
        // Creating objects of Shape, Circle, and Hexagon
        Shape shape = new Shape();
        Circle circle = new Circle("Circle", 10);
        Hexagon hexagon = new Hexagon("Hexagon", 6);

        // Printing their details
        System.out.println(shape.toString());
        System.out.println(circle.toString());
        System.out.println(hexagon.toString());
    }
}

Main.main(null)
```

    Shape: Shape (Length: 20, Width: 5)
    Circle: Circle (Radius: 10)
    Hexagon: Hexagon (Side Length: 6)


### Popcorn Hack 2 (optional)


```Java
public class Shape {
    protected String name;
    private int length;
    private int width;

    // Default constructor
    public Shape() {
        this.name = "Generic Shape";
        this.length = 10;
        this.width = 5;
    }

    // Parameterized constructor
    public Shape(String name, int length, int width) {
        this.name = name;
        this.length = length;
        this.width = width;
    }

    // Getter methods
    public String get_name() {
        return this.name;
    }

    public int get_length() {
        return this.length;
    }

    public int get_width() {
        return this.width;
    }

    // Setter methods
    public void set_name(String n) {
        this.name = n;
    }

    public void set_length(int l) {
        this.length = l;
    }

    public void set_width(int w) {
        this.width = w;
    }

    // Method to calculate the area (general for rectangles)
    public double calc_area() {
        return this.length * this.width;
    }

    // Method to print shape details
    public void print_shape() {
        System.out.println("Shape: " + this.name + " (Length: " + this.length + ", Width: " + this.width + ")");
    }

    // Placeholder method for child class overrides
    public void print_something() {
        System.out.println("This is a generic shape");
    }
}

public class Rectangle extends Shape {
    // Default constructor
    public Rectangle() {
        super("Rectangle", 10, 5); // Default values
    }

    // Parameterized constructor
    public Rectangle(String name, int length, int width) {
        super(name, length, width);
    }

    @Override
    public double calc_area() {
        return get_length() * get_width();
    }

    @Override
    public void print_something() {
        System.out.println("This is a rectangle with length " + get_length() + " and width " + get_width());
    }
}

public class Triangle extends Shape {
    public Triangle() {
        super("Triangle", 5, 10); // Default values
    }

    public Triangle(String name, int base, int height) {
        super(name, base, height);
    }

    @Override
    public double calc_area() {
        return (get_length() * get_width() * 0.5);
    }

    @Override
    public void print_something() {
        System.out.println("This is a triangle");
    }
}

public class Ellipse extends Shape {
    // Default constructor
    public Ellipse() {
        super("Ellipse", 10, 5); // Default ellipse with major and minor axes
    }

    // Parameterized constructor
    public Ellipse(String name, int length, int width) {
        super(name, length, width);
    }

    @Override
    public double calc_area() {
        return Math.PI * (get_length() / 2.0) * (get_width() / 2.0); // Using semi-major and semi-minor axes
    }

    @Override
    public void print_something() {
        System.out.println("This is an ellipse");
    }
}

public class Driver {
    public static void main(String[] args) {
        // Create objects
        Shape shape = new Shape();
        Rectangle rectangle = new Rectangle("Rectangle", 40, 2);
        Triangle triangle = new Triangle("Triangle", 2, 20);
        Ellipse ellipse = new Ellipse("Ellipse", 5, 20);

        // Calculate and print area for each object
        System.out.println("Area of Shape: " + shape.calc_area());
        System.out.println("Area of Rectangle: " + rectangle.calc_area());
        System.out.println("Area of Triangle: " + triangle.calc_area());
        System.out.println("Area of Ellipse: " + ellipse.calc_area());

        // Print shape details
        shape.print_shape();
        rectangle.print_shape();
        triangle.print_shape();
        ellipse.print_shape();

        // Call the print_something() method for each object
        shape.print_something();
        rectangle.print_something();
        triangle.print_something();
        ellipse.print_something();
    }
}

// Run the driver code
Driver.main(new String[0]);

```

    Area of Shape: 50.0
    Area of Rectangle: 80.0
    Area of Triangle: 20.0
    Area of Ellipse: 78.53981633974483
    Shape: Generic Shape (Length: 10, Width: 5)
    Shape: Rectangle (Length: 40, Width: 2)
    Shape: Triangle (Length: 2, Width: 20)
    Shape: Ellipse (Length: 5, Width: 20)
    This is a generic shape
    This is a rectangle with length 40 and width 2
    This is a triangle
    This is an ellipse


### Popcorn Hack 3


```Java
public class Triangle extends Shape {
    private int side1;
    private int side2;
    private int side3;

    public Triangle() {
        super("triangle", 0, 0); // Call to Shape constructor to set the name
        this.side1 = 1;
        this.side2 = 2;
        this.side3 = 3;
    }

    // Constructor that takes a name and three side lengths
    public Triangle(String name, int s1, int s2, int s3) {
        super(name, 0, 0); // Call to Shape constructor to set the name
        this.side1 = s1;
        this.side2 = s2;
        this.side3 = s3;
    }

    @Override
    public double calc_area() {
        // Semi-perimeter calculation
        double s = (side1 + side2 + side3) / 2.0;

        // Heron's formula for the area
        double area = Math.sqrt(s * (s - side1) * (s - side2) * (s - side3));

        return area;
    }
}

Triangle t1 = new Triangle("triangle", 3, 4, 5);
t1.print_shape();
System.out.println("Area of t1 = " + t1.calc_area());
```

    Shape: triangle (Length: 0, Width: 0)
    Area of t1 = 6.0


### Popcorn Hack 4


```Java
public class Shape {
    protected String name;
    private int length;
    private int width;

    // Default constructor
    public Shape() {
        this.name = "Shape";
        this.length = 10;
        this.width = 5;
    }

    // Parameterized constructor
    public Shape(String name, int length, int width) {
        this.name = name;
        this.length = length;
        this.width = width;
    }

    // Getter methods
    public String get_name() {
        return this.name;
    }

    public int get_length() {
        return this.length;
    }

    public int get_width() {
        return this.width;
    }

    // Setter methods
    public void set_name(String n) {
        this.name = n;
    }

    public void set_length(int a) {
        this.length = a;
    }

    public void set_width(int b) {
        this.width = b;
    }

    // Method to calculate the area
    public double calc_area() {
        return this.length * this.width;
    }

    // Method to calculate the perimeter (default implementation for shapes)
    public double calc_perimeter() {
        // Default implementation for perimeter (can be overridden by subclasses)
        return 2 * (this.length + this.width);
    }

    // Method to print the shape
    public void print_shape() {
        System.out.println("Shape: " + this.name);
    }
}

public class Triangle extends Shape {
    private int side1;
    private int side2;
    private int side3;

    public Triangle() {
        super("triangle", 0, 0); // Call to Shape constructor to set the name
        this.side1 = 1;
        this.side2 = 2;
        this.side3 = 3;
    }

    // Constructor that takes a name and three side lengths
    public Triangle(String name, int s1, int s2, int s3) {
        super(name, 0, 0); // Call to Shape constructor to set the name
        this.side1 = s1;
        this.side2 = s2;
        this.side3 = s3;
    }

    @Override
    public double calc_area() {
        // Semi-perimeter calculation
        double s = (side1 + side2 + side3) / 2.0;

        // Heron's formula for the area
        return Math.sqrt(s * (s - side1) * (s - side2) * (s - side3));
    }

    @Override
    public double calc_perimeter() {
        return side1 + side2 + side3; // Perimeter is the sum of all sides
    }
}

public class ShapeDriver {
    public static void main(String[] args) {
        Triangle ti84 = new Triangle("triangle", 3, 4, 5);
        System.out.println("Area: " + ti84.calc_area());      // Expected output: 6
        System.out.println("Perimeter: " + ti84.calc_perimeter());  // Expected output: 12
    }
}

Triangle ti84 = new Triangle("triangle", 3, 4, 5);
System.out.println(ti84.calc_area());
System.out.println(ti84.calc_perimeter());
```

    6.0
    12.0


### Popcorn Hack 5 (all of the parts are combined here)


```Java
class Shape {
    public String draw() {
        return "Drawing a shape";
    }

    public double area() {
        return 0;  // Default area method, overridden by subclasses
    }
}

class Triangle extends Shape {
    private double base;
    private double height;

    public Triangle(double base, double height) {
        this.base = base;
        this.height = height;
    }

    @Override
    public double area() {
        return 0.5 * base * height;  // Area formula for a triangle
    }

    @Override
    public String draw() {
        return "Drawing a triangle";
    }
}

class Rectangle extends Shape {
    private double length;
    private double width;

    public Rectangle(double length, double width) {
        this.length = length;
        this.width = width;
    }

    @Override
    public double area() {
        return length * width;  // Area formula for a rectangle
    }

    @Override
    public String draw() {
        return "Drawing a rectangle";
    }
}

class Circle extends Shape {
    private double radius;

    public Circle(double radius) {
        this.radius = radius;
    }

    @Override
    public double area() {
        return Math.PI * radius * radius;  // Area formula for a circle
    }

    @Override
    public String draw() {
        return "Drawing a circle";
    }
}

class Square extends Shape {
    private double side;

    public Square(double side) {
        this.side = side;
    }

    @Override
    public double area() {
        return side * side;  // Area formula for a square
    }

    @Override
    public String draw() {
        return "Drawing a square";
    }
}

public class Main {
    public static void main(String[] args) {
        // Create instances of each shape
        Shape triangle = new Triangle(10, 5);
        Shape rectangle = new Rectangle(8, 4);
        Shape circle = new Circle(3);
        Shape square = new Square(6);

        // Output drawing and area for each shape
        System.out.println(triangle.draw() + " with area: " + triangle.area());
        System.out.println(rectangle.draw() + " with area: " + rectangle.area());
        System.out.println(circle.draw() + " with area: " + circle.area());
        System.out.println(square.draw() + " with area: " + square.area());
    }
}

Main.main(null)
```

    Drawing a triangle with area: 25.0
    Drawing a rectangle with area: 32.0
    Drawing a circle with area: 28.274333882308138
    Drawing a square with area: 36.0


### Homework Hack


```Java
class Shape {
    // Base method for drawing a shape, meant to be overridden by subclasses
    public String draw() {
        return "Drawing a shape";  // Default behavior for generic shapes
    }
}

class Triangle extends Shape {
    @Override
    public String draw() {
        return "Drawing a triangle";  // Unique behavior for Triangle
    }
}

class Rectangle extends Shape {
    @Override
    public String draw() {
        return "Drawing a rectangle";  // Unique behavior for Rectangle
    }
}

class Hexagon extends Shape {
    @Override
    public String draw() {
        return "Drawing a hexagon";  // Unique behavior for Hexagon
    }
}

public class Main {
    public static void main(String[] args) {
        // Create instances of each shape
        Shape triangle = new Triangle();
        Shape rectangle = new Rectangle();
        Shape hexagon = new Hexagon();

        // Output the drawing message for each shape
        System.out.println(triangle.draw());
        System.out.println(rectangle.draw());
        System.out.println(hexagon.draw());
    }
}

Main.main(null)
```

    Drawing a triangle
    Drawing a rectangle
    Drawing a hexagon


### Popcorn Hack 6


```Java
// Base class
class Animal {
    public void makeSound() {
        System.out.println("hee hee hee haw");
    }
}

// Subclass Dog
class Dog extends Animal {
    @Override
    public void makeSound() {
        System.out.println("BARK");
    }
}

// Subclass Cat
class Cat extends Animal {
    @Override
    public void makeSound() {
        System.out.println("MEOW");
    }
}

// Main class to demonstrate polymorphism
public class Main {
    public static void main(String[] args) {
        // Create an array of Animal references
        Animal[] animals = new Animal[3];

        // Assign Dog and Cat objects to the Animal array
        animals[0] = new Dog();
        animals[1] = new Cat();
        animals[2] = new Dog();

        // Iterate through the array and call makeSound() on each animal
        for (Animal animal : animals) {
            animal.makeSound();  // Polymorphic call
        }
    }
}

Main.main(null)
```

    BARK
    MEOW
    BARK


Explanation:

Reference types such as cat or dog are instances and at as object classes which can be reference. Each time they are declared they act as the child and get the attriubtes of the superclass. Static classes on the other hand behave as a function provided by the class and do not depend on n instant of the class being referenced.

Downcasting:

Downcasting is the process of converting a reference of a superclass type to a reference of one of its subclass types. In object-oriented programming, downcasting allows you to access the subclass-specific methods and properties that are not available in the superclass reference. It's commonly used in situations where you have upcasted an object (converted a subclass to a superclass) and later want to access the full functionality of the original subclass.




### Popcorn Hack 7


```Java
class Fruit {
    private String name;

    public Fruit(String name) {
        this.name = name;
    }

    // Unchanged method from Object
    @Override
    public String toString() {
        return "This is a fruit.";
    }

    // Changed method from Object
    @Override
    public boolean equals(Object obj) {
        if (this == obj) return true; // Check if they are the same instance
        if (obj == null || getClass() != obj.getClass()) return false; // Check for null and type
        Fruit fruit = (Fruit) obj; // Down-cast
        return name.equals(fruit.name); // Compare fruit names
    }
}

public class Main {
    public static void main(String[] args) {
        Fruit apple = new Fruit("Apple");
        Fruit anotherApple = new Fruit("Apple");
        Fruit banana = new Fruit("Banana");

        // Execute the unchanged method from Object
        System.out.println(apple.toString()); // Output: This is a fruit.

        // Execute the changed method from Object
        System.out.println(apple.equals(anotherApple)); // Output: true
        System.out.println(apple.equals(banana)); // Output: false
    }
}

Main.main(null)
```

    This is a fruit.
    true
    false


___

### Homework Hacks

___

### FRQ

The Textbook class is a specialized extension of the Book class, designed to manage textbooks with additional features specific to their editions. It introduces a private integer field named edition, which represents the edition number of the textbook, along with a constructor that initializes the title, price, and edition while ensuring that the edition is a positive integer. The class includes a method, canSubstituteFor, which checks if the current textbook can substitute for another by comparing their titles and edition numbers. Furthermore, it overrides the getBookInfo method to provide a comprehensive string representation that includes the edition, enhancing the information provided by the superclass. The toString method is also overridden for convenient output, allowing users to easily access the textbook's details. Overall, this class encapsulates the additional properties of textbooks while leveraging the existing functionality of the Book class.

### MCQ

The correct answer is c) The toString() method must be public.

In Java, the toString() method is designed to be overridden from the Object class. It should be declared as public so that it can be accessed when invoking methods like System.out.println(myShape). If the toString() method is private, it cannot be called outside of the Shape class, preventing it from being automatically used during object printing.

The correct answer is b) isSalty().

The isSalty() method in the Water class is declared as private, meaning it cannot be accessed or overridden in the Lake subclass. Although the Lake class defines its own public isSalty() method, it does not override the private method in the Water class and, as a result, cannot be invoked polymorphically on an instance of Water. The other methods, typeOfWater() and toString(), are declared as public and can be accessed. Additionally, getClass() is inherited from the Object class and can be invoked on any object.

### EXTRA CREDIT HACK


```Java
abstract class Payment {
    protected double amount;

    public Payment(double amount) {
        this.amount = amount;
    }

    public abstract void processPayment();
}

class CreditCardPayment extends Payment {
    private String cardNumber;

    public CreditCardPayment(double amount, String cardNumber) {
        super(amount);
        this.cardNumber = cardNumber;
    }

    @Override
    public void processPayment() {
        System.out.println("Processing credit card payment of $" + amount + " using card: " + cardNumber);
    }
}

class PayPalPayment extends Payment {
    private String email;

    public PayPalPayment(double amount, String email) {
        super(amount);
        this.email = email;
    }

    @Override
    public void processPayment() {
        System.out.println("Processing PayPal payment of $" + amount + " using email: " + email);
    }
}

public class PaymentApplication {
    public static void main(String[] args) {
        Payment[] payments = new Payment[2];
        payments[0] = new CreditCardPayment(100.00, "1234-5678-9876-5432");
        payments[1] = new PayPalPayment(150.50, "gorilla@monkey.com");

        for (Payment payment : payments) {
            payment.processPayment();
        }
    }
}

PaymentApplication.main(null)
```

    Processing credit card payment of $100.0 using card: 1234-5678-9876-5432
    Processing PayPal payment of $150.5 using email: gorilla@monkey.com



```Java

```

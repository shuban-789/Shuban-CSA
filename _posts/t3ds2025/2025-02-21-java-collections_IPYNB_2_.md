---
title: Collectable Types and Collections
comments: True
layout: post
description: This is a deeper review on data structures specific to Java.  Many of these Data Structures are referred to as Collections.   Using Collections requires deeper understand of Objects and the Generic Type.
author: John Mortensen
type: ccc
courses: {'csa': {'week': 25}}
---

##  Arrays, ArrayList, 2D Arrays
Most "Data Structures" conversations begin with Arrays, which are built into most Computer Programming Languages. College Board has CSA Units 6-8 which discuss Arrays, ArrayLists, and 2-Dimensional Arrays.  

Arrays, 2D Arrays, and ArrayLists are important data structures in computer science, and they are the subject of two FRQs in each AP Computer Science A exam. Here are some types of FRQs that may focus on these topics:
1. ***Array/ArrayList implementation***: You may be asked to implement an Array or ArrayList, including methods to add, remove, and access elements.
2. ***Array/ArrayList traversal***: You may be given an Array or ArrayList and asked to traverse it, perform operations on each element, and/or modify the array or list.
3. ***Array/ArrayList searching and sorting***: You may be asked to implement or modify code to search for an element in an array or list, or to sort the elements of an array or list.
4. ***2D Arrays or Multi-dimensional arrays***: You may be asked to implement or modify code that uses a multi-dimensional array, and to perform operations on elements of the array.
5. ***ArrayList vs. Array***: You may be asked to compare and contrast the characteristics of ArrayLists and Arrays, and to explain when it is appropriate to use one data structure over the other.
6. ***Big-O complexity***: You may be asked to analyze the time and space complexity of algorithms that use Arrays or ArrayLists, and to compare the efficiency of different algorithms.



## Collection Framework in Java
A deeper dive into Data Structures continues with **Linked Lists (LL)** which are the foundation for **Stacks** and **Queues**, which we have used.   Java has implemented a Collection framework that has established common methods to assist in using many of these Data Structures.

```java
Queue<String> queue = new LinkedList<>();  // Queue interface uses LL implementation
queue.add("John");
queue.add("Jane");
queue.add("Bob");
```

***[Deeper reference from Geeks](https://www.geeksforgeeks.org/collections-in-java-2/)***


```Java
Queue<String> queue = new LinkedList<>();  // Queue interface uses LL implementation
queue.add("John");
queue.add("Jane");
queue.add("Bob");

// Collections has a toArray convertion which is a copy of the queue
Object[] arr = queue.toArray();

// Empty queue
System.out.println("Remove each element from the LinkedList Queue of size: " + queue.size());
while (queue.size() > 0) // Interate while size
    System.out.println(queue.remove());
System.out.println("Is Queue empty: " + queue.isEmpty());

// Blank line in console
System.out.println();

// Iterate of array
System.out.println("Iterate over the Array as the copy still has size: " + arr.length);
for (Object a : arr) // Type is Object from convertion
    System.out.println(a);
```

    Remove each element from the LinkedList Queue of size: 3
    John
    Jane
    Bob
    Is Queue empty: true
    
    Iterate over the Array as the copy still has size: 3
    John
    Jane
    Bob


### Collectable
The purpose of this "class" definition is to show how we can combine any Data Type into a super class.  
- This class is abstract, meaning it can not used unless extended.
- The keyword interface is used to ensure people define "interface" in their implementation.  This can be used for things like sorting and searching information within the class.
- ***Every object in Java is inherited from Data Type "Object"***.  This is shown in toString() method @Overrides below.  The toString() method has a prototype implementation in "Object".  Each extended class that @Overrides toString() and can be used to create a string representation of its "Object".


```Java
/* This is wrapper class...
 Objective would be to push more functionality into this Class to enforce consistent definition
 */
public abstract class Collectable implements Comparable <Collectable> {
	public final String masterType = "Collectable";
	private String type;	// extender should define their data type

	// enumerated interface
	public interface KeyTypes {
		String name();
	}
	protected abstract KeyTypes getKey();  	// this method helps force usage of KeyTypes

	// getter
	public String getMasterType() {
		return masterType;
	}

	// getter
	public String getType() {
		return type;
	}

	// setter
	public void setType(String type) {
		this.type = type;
	}
	
	// this method is used to establish key order
	public abstract String toString();

	// this method is used to compare toString of objects
	public int compareTo(Collectable obj) {
		return this.toString().compareTo(obj.toString());
	}

	// static print method used by extended classes
	public static void print(Collectable[] objs) {
		// print 'Object' properties
		System.out.println(objs.getClass() + " " + objs.length);

		// print 'Collectable' properties
		if (objs.length > 0) {
			Collectable obj = objs[0];	// Look at properties of 1st element
			System.out.println(
					obj.getMasterType() + ": " + 
					obj.getType() +
					" listed by " +
					obj.getKey());
		}

		// print "Collectable: Objects'
		for(Object o : objs)	// observe that type is Opaque
			System.out.println(o);

		System.out.println();
	}
}
```

### Alphabet extends Collectable
This class is used to store the alphabet.

- ***Implements interface KeyType*** which is used in toString method of Alphabet object
- ***Overrides methods*** in abstract class Collectable, which includes class Object.


```Java
public class Alphabet extends Collectable {
	// Class data
	public static KeyTypes key = KeyType.title;  // static initializer
	public static void setOrder(KeyTypes key) {Alphabet.key = key;}
	public enum KeyType implements KeyTypes {title, letter}
	private static final int size = 26;  // constant used in data initialization

	// Instance data
	private final char letter;
	
	/*
	 * single letter object
	 */
	public Alphabet(char letter)
	{
		this.setType("Alphabet");
		this.letter = letter;
	}

	/* 'Collectable' requires getKey to help enforce KeyTypes usage */
	@Override
	protected KeyTypes getKey() { return Alphabet.key; }

	/* 'Collectable' requires toString override
	 * toString provides data based off of Static Key setting
	 */
	@Override
	public String toString()
	{
		String output="";
		if (KeyType.letter.equals(this.getKey())) {
			output += this.letter;
		} else {
			output += super.getType() + ": " + this.letter;
		}
		return output;
	}

	// Test data initializer for upper case Alphabet
	public static Alphabet[] alphabetData()
	{
		Alphabet[] alphabet = new Alphabet[Alphabet.size];
		for (int i = 0; i < Alphabet.size; i++)
		{
			alphabet[i] = new Alphabet( (char)('A' + i) );
		} 	
		return alphabet;
	}
	
	/* 
	 * main to test Animal class
	 */
	public static void main(String[] args)
	{
		// Inheritance Hierarchy
		Alphabet[] objs = alphabetData();

		// print with title
		Alphabet.setOrder(KeyType.title);
		Alphabet.print(objs);

		// print letter only
		Alphabet.setOrder(KeyType.letter);
		Alphabet.print(objs);
	}
	
}
Alphabet.main(null);
```

    class [LREPL.$JShell$24$Alphabet; 26
    Collectable: Alphabet listed by title
    Alphabet: A
    Alphabet: B
    Alphabet: C
    Alphabet: D
    Alphabet: E
    Alphabet: F
    Alphabet: G
    Alphabet: H
    Alphabet: I
    Alphabet: J
    Alphabet: K
    Alphabet: L
    Alphabet: M
    Alphabet: N
    Alphabet: O
    Alphabet: P
    Alphabet: Q
    Alphabet: R
    Alphabet: S
    Alphabet: T
    Alphabet: U
    Alphabet: V
    Alphabet: W
    Alphabet: X
    Alphabet: Y
    Alphabet: Z
    
    class [LREPL.$JShell$24$Alphabet; 26
    Collectable: Alphabet listed by letter
    A
    B
    C
    D
    E
    F
    G
    H
    I
    J
    K
    L
    M
    N
    O
    P
    Q
    R
    S
    T
    U
    V
    W
    X
    Y
    Z
    


### Animal.  This class is used to store properties on Animals.
- Extends Collectable.
- Implements interface KeyType with more keys than 1st example, as this Class has more attributes.
- Overrides methods in abstract Collectable, notice that this has more variations of Display.


```Java
/*
 * Animal class extends Collectable and defines abstract methods
 */
public class Animal extends Collectable {
	// Class data
	public static KeyTypes key = KeyType.title;  // static initializer
	public static void setOrder(KeyTypes key) { Animal.key = key; }
	public enum KeyType implements KeyTypes {title, name, age, color}

	// Instance data
	private final String name;
	private final int age;
	private final String color;

	/* constructor
	 *
	 */
	public Animal(String name, int age, String color)
	{
		super.setType("Animal");
		this.name = name;
		this.age = age;
		this.color = color;
	}

	/* 'Collectable' requires getKey to help enforce KeyTypes usage */
	@Override
	protected KeyTypes getKey() { return Animal.key; }
	
	/* 'Collectable' requires toString override
	 * toString provides data based off of Static Key setting
	 */
	@Override
	public String toString()
	{
		String output="";
		if (KeyType.name.equals(this.getKey())) {
			output += this.name;
		} else if (KeyType.age.equals(this.getKey())) {
			output += "00" + this.age;
			output = output.substring(output.length() - 2);
		} else if (KeyType.color.equals(this.getKey())) {
			output += this.color;
		} else {
			output += super.getType() + ": " + this.name + ", " + this.color + ", " + this.age;
		}
		return output;
		
	}

	// Test data initializer
	public static Animal[] animals() {
		return new Animal[]{
				new Animal("Lion", 8, "Gold"),
				new Animal("Pig", 3, "Pink"),
				new Animal("Robin", 7, "Red"),
				new Animal("Cat", 10, "Black"),
				new Animal("Kitty", 1, "Calico"),
				new Animal("Dog", 14, "Brown")
		};
	}
	
	/* main to test Animal class
	 * 
	 */
	public static void main(String[] args)
	{
		// Inheritance Hierarchy
		Animal[] objs = animals();

		// print with title
		Animal.setOrder(KeyType.title);
		Animal.print(objs);

		// convert to Coolection and sort in name order
		Animal.setOrder(KeyType.name);
		List<Animal> animals = new ArrayList<Animal>(Arrays.asList(objs));  // Array has asList conversion
		Collections.sort(animals);
		Animal.setOrder(KeyType.title);
		for (Animal animal : animals)
			System.out.println(animal);
	}

}
Animal.main(null);
```

    class [LREPL.$JShell$26$Animal; 6
    Collectable: Animal listed by title
    Animal: Lion, Gold, 8
    Animal: Pig, Pink, 3
    Animal: Robin, Red, 7
    Animal: Cat, Black, 10
    Animal: Kitty, Calico, 1
    Animal: Dog, Brown, 14
    
    Animal: Cat, Black, 10
    Animal: Dog, Brown, 14
    Animal: Kitty, Calico, 1
    Animal: Lion, Gold, 8
    Animal: Pig, Pink, 3
    Animal: Robin, Red, 7


### Cupcake.  This class is used to store properties of Cupcakes.
- Extends Collectable.
- Implements interface, very similar to previous example.
- Overrides methods in abstract Collectable.
- Though Animals and Cupcakes are very different in real word, properties and management look very similar.


```Java
public class Cupcake extends Collectable {
	// Class data
	public static KeyTypes key = KeyType.title;  // static initializer
	public static void setOrder(KeyTypes key) {Cupcake.key = key;}
	public enum KeyType implements KeyTypes {title, flavor, frosting, sprinkles}

	// Instance data
	private final String frosting;
	private final int sprinkles;
	private final String flavor;

	// Constructor
	Cupcake(String frosting, int sprinkles, String flavor)
	{
		this.setType("Cupcake");
		this.frosting = frosting;
		this.sprinkles = sprinkles;
		this.flavor = flavor;
	}

	/* 'Collectable' requires getKey to help enforce KeyTypes usage */
	@Override
	protected KeyTypes getKey() { return Cupcake.key; }

	/* 'Collectable' requires toString override
	 * toString provides data based off of Static Key setting
	 */
	@Override
	public String toString() {		
		String output="";
		if (KeyType.flavor.equals(this.getKey())) {
			output += this.flavor;
		} else if (KeyType.frosting.equals(this.getKey())) {
			output += this.frosting;
		} else if (KeyType.sprinkles.equals(this.getKey())) {
			output += "00" + this.sprinkles;
			output = output.substring(output.length() - 2);
		} else {
			output = super.getType() + ": " + this.flavor + ", " + this.frosting + ", " + this.sprinkles;
		}
		return output;
	}

	// Test data initializer
	public static Cupcake[] cupcakes() {
		return new Cupcake[]{
				new Cupcake("Red", 4, "Red Velvet"),
			    new Cupcake("Orange", 5, "Orange"),
			    new Cupcake("Yellow", 6, "Lemon"),
			    new Cupcake("Green", 7, "Apple"),
			    new Cupcake("Blue", 8, "Blueberry"),
			    new Cupcake("Purple", 9, "Blackberry"),
			    new Cupcake("Pink", 10, "Strawberry"),
			    new Cupcake("Tan", 11, "Vanilla"),
			    new Cupcake("Brown", 12, "Chocolate"),
		};
	}
	
	public static void main(String[] args)
	{
		// Inheritance Hierarchy
		Cupcake[] objs = cupcakes();

		// print with title
		Cupcake.setOrder(KeyType.title);
		Cupcake.print(objs);

		// convert to Coolection and sort in flavor order
		Cupcake.setOrder(KeyType.flavor);
		List<Cupcake> cupcakes = new ArrayList<Cupcake>(Arrays.asList(objs));
		Collections.sort(cupcakes);
		Cupcake.setOrder(KeyType.title);
		for (Cupcake cupcake : cupcakes)
			System.out.println(cupcake);
	}
	
}
Cupcake.main(null);
```

    class [LREPL.$JShell$28$Cupcake; 9
    Collectable: Cupcake listed by title
    Cupcake: Red Velvet, Red, 4
    Cupcake: Orange, Orange, 5
    Cupcake: Lemon, Yellow, 6
    Cupcake: Apple, Green, 7
    Cupcake: Blueberry, Blue, 8
    Cupcake: Blackberry, Purple, 9
    Cupcake: Strawberry, Pink, 10
    Cupcake: Vanilla, Tan, 11
    Cupcake: Chocolate, Brown, 12
    
    Cupcake: Apple, Green, 7
    Cupcake: Blackberry, Purple, 9
    Cupcake: Blueberry, Blue, 8
    Cupcake: Chocolate, Brown, 12
    Cupcake: Lemon, Yellow, 6
    Cupcake: Orange, Orange, 5
    Cupcake: Red Velvet, Red, 4
    Cupcake: Strawberry, Pink, 10
    Cupcake: Vanilla, Tan, 11


### Hack Helpers

Below is a starter Queue and a Linked List implementation.  This implements Generic type and implements Iterable to support Java ForEach (enhanced For) loops.

In my experience, building your own Data Structures can help you to understand fundamentals of a Computer Language.  To use a Data Structure you will need data.  The developer working with LL, Stacks, and Queues needs to can learn how to manage different Data Types, this helps you learn about the Java Data Type `Object` as a generic form of an instance of a class and the `Generic type <T>` as generic for of a Data Type within a class definition.


```Java
/**
 *  Implementation of a Double Linked List;  forward and backward links point to adjacent Nodes.
 *
 */

 public class LinkedList<T>
 {
     private T data;
     private LinkedList<T> prevNode, nextNode;
 
     /**
      *  Constructs a new element
      *
      * @param  data, data of object
      * @param  node, previous node
      */
     public LinkedList(T data, LinkedList<T> node)
     {
         this.setData(data);
         this.setPrevNode(node);
         this.setNextNode(null);
     }
 
     /**
      *  Clone an object,
      *
      * @param  node  object to clone
      */
     public LinkedList(LinkedList<T> node)
     {
         this.setData(node.data);
         this.setPrevNode(node.prevNode);
         this.setNextNode(node.nextNode);
     }
 
     /**
      *  Setter for T data in DoubleLinkedNode object
      *
      * @param  data, update data of object
      */
     public void setData(T data)
     {
         this.data = data;
     }
 
     /**
      *  Returns T data for this element
      *
      * @return  data associated with object
      */
     public T getData()
     {
         return this.data;
     }
 
     /**
      *  Setter for prevNode in DoubleLinkedNode object
      *
      * @param node, prevNode to current Object
      */
     public void setPrevNode(LinkedList<T> node)
     {
         this.prevNode = node;
     }
 
     /**
      *  Setter for nextNode in DoubleLinkedNode object
      *
      * @param node, nextNode to current Object
      */
     public void setNextNode(LinkedList<T> node)
     {
         this.nextNode = node;
     }
 
 
     /**
      *  Returns reference to previous object in list
      *
      * @return  the previous object in the list
      */
     public LinkedList<T> getPrevious()
     {
         return this.prevNode;
     }
 
     /**
      *  Returns reference to next object in list
      *
      * @return  the next object in the list
      */
     public LinkedList<T> getNext()
     {
         return this.nextNode;
     }
 
 }
```


```Java

import java.util.Iterator;

/**
 * Queue Iterator
 *
 * 1. "has a" current reference in Queue
 * 2. supports iterable required methods for next that returns a generic T Object
 */
class QueueIterator<T> implements Iterator<T> {
    LinkedList<T> current;  // current element in iteration

    // QueueIterator is pointed to the head of the list for iteration
    public QueueIterator(LinkedList<T> head) {
        current = head;
    }

    // hasNext informs if next element exists
    public boolean hasNext() {
        return current != null;
    }

    // next returns data object and advances to next position in queue
    public T next() {
        T data = current.getData();
        current = current.getNext();
        return data;
    }
}

/**
 * Queue: custom implementation
 * @author     John Mortensen
 *
 * 1. Uses custom LinkedList of Generic type T
 * 2. Implements Iterable
 * 3. "has a" LinkedList for head and tail
 */
public class Queue<T> implements Iterable<T> {
    private String name = null; // name of queue
    private int count = 0; // number of objects in queue
    LinkedList<T> head = null, tail = null;

    /** Constructor
     *  Queue constructor
     *  Parameters to name queue and Data Objects
     */
    public Queue(String name, T[]... seriesOfObjects) {
        this.name = name;
        this.addList(seriesOfObjects);
    }

    /** Queue Accessors / Getters
     * These gettrs return Queue Meta Data
     */
    public String getName() {return this.name;}
    public int getCount() {return this.count;}

    /** Add an object
     *  Parameter is a Data Object that is added to end of the Queue,
     *
     * @param  data,  is the data to be inserted in the Queue.
     */
    public void add(T data) {
        // add new object to end of Queue
        LinkedList<T> tail = new LinkedList<>(data, null);

        if (this.head == null)  // initial condition
            this.head = this.tail = tail;
        else {  // nodes in queue
            this.tail.setNextNode(tail); // current tail points to new tail
            this.tail = tail;  // update tail
        }
        this.count++;
    }

    /** Add a list of Objects
     * Paramter is a serise of Data Objects to be added to Queue
     * 
     */
    public void addList(T[]... seriesOfObjects) {  //accepts multiple generic T lists
        for (T[] objects: seriesOfObjects)
            for (T data : objects) {
                this.add(data);
            }
    }

    /** Delete Head Element
     *  Returns the data of head.
     *
     * @return  data, the dequeued data
     */
    public T delete() {
        T data = this.peek();
        if (this.tail != null) { // initial or empty condition
            this.head = this.head.getNext(); // current tail points to new tail
            if (this.head != null) {
                this.head.setPrevNode(tail);
            }
            this.count--;
        }
        return data;
    }

    /** Peak at Head Data
     *  Returns the data of head element
     *
     * @return  this.head.getData(), the head data in Queue.
     */
    public T peek() {
        return this.head.getData();
    }

    /** Get Head
     *  Returns the head object
     *
     * @return  this.head, the head object in Queue.
     */
    public LinkedList<T> getHead() {
        return this.head;
    }

    /** Get Tail
     *  Returns the tail object
     *
     * @return  this.tail, the last object in Queue
     */
    public LinkedList<T> getTail() {
        return this.tail;
    }

    /** Implements Iterator
     *  Returns the iterator object.
     *
     * @return  this, instance of object
     */
    public Iterator<T> iterator() {
        return new QueueIterator<>(this.head);
    }

    /** Print Queue
     * Prints which by usage validates iterable and getters
     * 
     */
    public void print() {
        System.out.print(this.getName() + " " + this.getCount() +": ");
        for (Object obj: this)
            System.out.print("" + obj + " ");
        System.out.println();
    }
    
}
```


```Java
/**
 * Driver Class
 * Tests queue with string, integers, and mixes of Classes and types
 */
class QueueTester {
    public static void main(String[] args)
    {
        // Create iterable Queue of Words
        String[] words = new String[] { "seven", "slimy", "snakes", "sallying", "slowly", "slithered", "southward"};
        Queue qWords = new Queue("Words", words);
        qWords.print();
        
        
        // Create iterable Queue of Integers
        Integer[] numbers = new Integer[] { 0, 1, 2, 3, 4, 5, 6, 7, 8, 9};
        Queue qNums = new Queue("Integers", numbers );
        qNums.print();

       
        // Create iterable Queue of NCS Collectable
        Animal.setOrder(Animal.KeyType.name);
        Alphabet.setOrder(Alphabet.KeyType.letter);
        Cupcake.setOrder(Cupcake.KeyType.flavor);
        // Illustrates use of a series of repeating arguments
        Queue qCollect = new Queue("Collectable",
                Alphabet.alphabetData(),
                Animal.animals(),
                Cupcake.cupcakes()
        );
        qCollect.print();


        // Create iterable Queue of Mixed types of data
        Queue qMix = new Queue("Mixed");
        qMix.add("Start");
        qMix.addList(
                words,
                numbers,
                Alphabet.alphabetData(),
                Animal.animals(),
                Cupcake.cupcakes()
        );
        qMix.add("End");
        qMix.print();
    }
}
QueueTester.main(null);
```

    Words 7: seven slimy snakes sallying slowly slithered southward 
    Integers 10: 0 1 2 3 4 5 6 7 8 9 
    Collectable 41: A B C D E F G H I J K L M N O P Q R S T U V W X Y Z Lion Pig Robin Cat Kitty Dog Red Velvet Orange Lemon Apple Blueberry Blackberry Strawberry Vanilla Chocolate 
    Mixed 60: Start seven slimy snakes sallying slowly slithered southward 0 1 2 3 4 5 6 7 8 9 A B C D E F G H I J K L M N O P Q R S T U V W X Y Z Lion Pig Robin Cat Kitty Dog Red Velvet Orange Lemon Apple Blueberry Blackberry Strawberry Vanilla Chocolate End 


---
title: Sorts Part 2
comments: True
layout: post
description: Continue with Classes, Queues, performing Sorts and BigO analysis on your algorithm(s).
author: John Mortensen
type: ccc
courses: {'csa': {'week': 25}}
---

## Algo Rythmics Presentation Week
> This week student teams will do their Algor Rythmic perfornance.

### Rename of Generics to Collectable
> The name is better and the method ```implements Cmparable``` and ```compareTo```.  
- The ```immplements Comparable``` allows sort to be utilized on Collections.
- This ```compareTo``` method will be valuable to those that extended Collectable.


```Java
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

### Cupcake extends Collectable
> The big benefit is seen in extends is in Tester method ...
- ```List<Cupcake> cupcakes = new ArrayList<Cupcake>(Arrays.asList(objs));``` converts Array to ArrrayList Collectable
- ```Cupcake.setOrder(KeyType.flavor);``` static setting triggers toString to return flavor as key
- ```Collections.sort(cupcakes)``` is used to sort list


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
		Cupcake[] objs = cupcakes();  // Array is reference type only, no methods
		List<Cupcake> cupcakes = new ArrayList<Cupcake>(Arrays.asList(objs));  // conversion required to make it a Collection

		// print with title
		Cupcake.setOrder(KeyType.title);
		Cupcake.print(objs);

		// convert to Coolection and sort in flavor order
		Cupcake.setOrder(KeyType.flavor);
		Collections.sort(cupcakes);  // This works because of Collectable compareTo method
		Cupcake.setOrder(KeyType.title);
		for (Cupcake cupcake : cupcakes)
			System.out.println(cupcake);
	}
	
}
Cupcake.main(null);
```

    class [LREPL.$JShell$13B$Cupcake; 9
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


### Remove of QueueManger
> The QueManager was not necessary and has been removed from my collections.
- method addList is added
- method print is added
- attribute name is added
- attribute count is added


```Java
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

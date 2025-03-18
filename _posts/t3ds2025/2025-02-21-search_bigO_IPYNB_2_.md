---
title: Search Challenge and BigO
comments: True
layout: post
description: Review search on Java HashMaps, HashSets and BigO
author: John Mortensen
type: ccc
courses: {'csa': {'week': 25}}
---

## Setup data for HashMap Hacks
> Define a data set.  To develop concepts and purpose define a few records.


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

	/* Getters / Accessors
	 * 
	 */
	public String getName() { return this.name; }
	public int getAge() { return this.age; }
	public String getColor() { return this.color; }

	
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

    class [LREPL.$JShell$13$Animal; 6
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


## HashMap
> Below is an example using a HashMap and listed are some key things to consider when using this data structure.

1. Hashing: HashMap uses a hash function to map keys to their corresponding buckets. The hash function is used to compute the index of the array where the key-value pair should be stored. A good hash function should generate a unique hash code for each key, but collisions (i.e., two keys with the same hash code) can still occur.  Hash map in Java does not maintain insertion order either by key or by the order inserted.

2. Performance: HashMap provides constant-time performance (O(1)) for get() and put() operations, as long as the hash function is well-distributed and there are no hash collisions. However, in the worst case, the performance of a HashMap can degrade to O(n), where n is the number of elements in the map.

3. Key and value types: HashMap allows any non-null object as a key, and any object (including null) as a value. However, to use a class as a key, it must implement the equals() and hashCode() methods. HashMap uses the equals() method to check if two keys are equal, and the hashCode() method to generate the hash code for the key.

4. Iteration: HashMap provides several ways to iterate over the key-value pairs in the map, including using keySet(), values(), and entrySet(). The entrySet() method returns a Set view of the key-value pairs in the map, which can be used to iterate over the pairs and modify the map as you go.

5. Thread safety: HashMap is not thread-safe, which means that if multiple threads access the same HashMap instance concurrently and at least one thread modifies the map structurally, the behavior is undefined. To make a HashMap thread-safe, you can use the ConcurrentHashMap class instead, which provides concurrent access and is designed for high concurrency. In a Full Stack project it would be best to use a NoSQL database to avoid concurrency issues.


```Java
import java.util.HashMap;

public class Pets {
    // create a new HashMap
    HashMap<String, Animal> names = new HashMap<>();

    /* Add Pets
     * 
     */
    public Pets() {
        // add some key-value pairs to the HashMap
        names.put("Leo", new Animal("Lion", 8, "Gold"));
        names.put("Porky", new Animal("Pig", 3, "Pink"));
        names.put("Ro-Ro", new Animal("Robin", 7, "Red"));
        names.put("Midnight", new Animal("Cat", 10, "Black"));
        names.put("Hobbes", new Animal("Kitty", 1, "Calico"));
        names.put("Duke", new Animal("Dog", 14, "Brown"));
    } 

    /* Remove Pet
     * 
     */
    public Animal remove(String key) {
        // check if a key exists in the HashMap then remove
        Animal animal = null;
        if (names.containsKey(key)) {
            animal = names.get(key);
            names.remove(key);
        }
        return animal;
    }

    /* Print Pets
     * 
     */
    public void print() {
        // iterate over the keys in the HashMap
        for (String name: names.keySet()) {
            Animal obj = names.get(name);
            System.out.println(name + " is a " + obj.getColor() + " " + obj.getName() + " and is " + obj.getAge() + " years old.");
        }
        System.out.println();
    }

    /* Tester Method
     * 
     */
    public static void main(String[] args) {

        // intialize Pets
        Pets pets = new Pets();
        pets.print();
        
        // remove a Pet
        String key = "Hobbes";
        Animal animal = pets.remove(key);
        if (animal == null) {
            System.out.println(key + " not found");
        } else {
            System.out.println("Removed: " + key + ", " + animal);
        }
        pets.print();

    }
}
Pets.main(null);
```

    Hobbes is a Calico Kitty and is 1 years old.
    Leo is a Gold Lion and is 8 years old.
    Porky is a Pink Pig and is 3 years old.
    Ro-Ro is a Red Robin and is 7 years old.
    Duke is a Brown Dog and is 14 years old.
    Midnight is a Black Cat and is 10 years old.
    
    Removed: Hobbes, Animal: Kitty, Calico, 1
    Leo is a Gold Lion and is 8 years old.
    Porky is a Pink Pig and is 3 years old.
    Ro-Ro is a Red Robin and is 7 years old.
    Duke is a Brown Dog and is 14 years old.
    Midnight is a Black Cat and is 10 years old.
    


> Below is an example using a java.util.Set and listed are some key things to consider when using this data structure.  A Set works similarly to a key in a HashMap, a Set is just the Key.

1. No duplicates: A Set does not allow duplicate elements. If you try to add an element that already exists in the Set, the add() method will return false and the Set will not be modified.  Duplicate add is shown in example.

2. Unordered: A Set does not maintain the insertion order of elements. The order of elements in a Set may change as elements are added or removed.

3. Equality: Two Sets are considered equal if they have the same elements, regardless of their order. The equals() method is used to test for Set equality.

4. Implementation classes: Java provides several implementation classes for the Set interface, including HashSet, LinkedHashSet, and TreeSet. Each implementation has different performance characteristics and is optimized for different use cases.

5. Iterator: The iterator() method can be used to iterate over the elements in a Set. The order in which elements are returned by the iterator is not defined and may change over time as elements are added or removed from the Set. The forEach() method is another way to iterate over the elements in a Set, and it allows you to pass a lambda expression to process each element in the Set.  Lambda expression is shown in example.


```Java
import java.util.HashSet;
import java.util.Set;

public class AnimalSet {
    public static void main(String[] args) {
        // create a new HashSet
        Set<String> animals = new HashSet<>();

        // add some elements to the Set
        animals.add("lion");
        animals.add("dog");
        animals.add("cat");

        // print out the Set
        System.out.println(animals);

        // check if an element is in the Set
        boolean hasLion = animals.contains("lion");
        System.out.println("Has lion: " + hasLion);

        // remove an element from the Set
        animals.remove("lion");
        System.out.println("Removed lion");

        // print out the Set
        System.out.println(animals);

        // add duplicate
        System.out.println("add duplicate dog");
        animals.add("dog");  // no action
        System.out.println(animals);
        // add duplicate
        System.out.println("add pig");
        animals.add("pig");
        System.out.println(animals);

        // using forEach() method with a lambda expression
        animals.forEach(animal -> {
            String message = "I ";
            // ternary operation for like, don't like
            message += animal.equals("dog") ? "like" : "don't like";
            // complete sentance
            message += " " + animal + "s " + "for pets";
            System.out.println(message);
        });

    }
}
AnimalSet.main(null);

```

    [cat, dog, lion]
    Has lion: true
    Removed lion
    [cat, dog]
    add duplicate dog
    [cat, dog]
    add pig
    [cat, dog, pig]
    I don't like cats for pets
    I like dogs for pets
    I don't like pigs for pets


## Hacks
> Analyze the Big O complexity on Sorts.
- Establish analytics including: time to sort, number of comparisons and number of swaps.
- Average the results for each each Sort, run each at least 12 times and 5000 elements.  You should throw out High and Low when doing analysis.
- Make your final/judgement on best sort: Number of Comparisons, Number of Swaps, Big O complexity, and Total Time.

> Build your own Hashmap.  Make a HashMap to correspond to a Data Structure using a Collection.
- Be sure to have 5000 records
- Perform analysis on Binary Search vs HashMap Lookup, try using random to search and find 100 keys in 5000 records.  Perform 12 times and throw out high and low.

> Extra, Practical learning
- Performing Iteration, Delete, and Add operations are another way to analyze Collection vs HashMap data structure.
- A HashMap and a Collection can be used in a Class, POJO and API.
- Make a Diagram on the Pros and Cons of Collection vs HashMap

---
layout: post
toc: True
title: Unit 5 - Homework
description: Unit 5 Period 3 Homework
authors: Shuban Pal
---

# Unit 5 Work Debrief (You're Welcome, Graders 🐦)

- 5.1 Anatomy: Hacks, Homework, Extras
- 5.2 Constructors: Hacks, Homework, Extras
- 5.4: Accessor Methods: Hacks, Homework, Extras
- 5.41 toString: Hacks, Homework, Extras
- 5.5 Mutator methods: Hacks, Homework, Extras
- 5.6 Writing Methods: Hacks, Homework, Extras
- 5.7 Static Variables and Methods: Hacks, Homework, Extras
- 5.8 Scope and Access: Hacks, Homework, Extras
- 5.9 This Keyword: Hacks, Homework, Extras
- Extra: Java code which begs for extra credit

# Section 5.1: Anatomy

- Popcorn Hacks (1)

## Popcorn Hack 1

Write a Student class. - Each student has a name - Each student has a score (out of 100) - A student passes if their score is above 70.

Check which student passes (write a class header, instance variables, constructors, and methods)


```java
public class Student {
    private String name;
    private int score;
    
    // Default constructor
    public Student() {
        name = "";
        score = 0;   
    }

    // Overloaded constructor
    public Student(String n, int s) {
        name = n;
        score = s;
    }

    //Accessor Methods
    public String getName() {
        return name;
    }

    public int getScore(){
        return score;
    }

    //Mutator Methods
    public void setName(String n){
        name = n;
    }

    public void setScore(int s){
        if(s < 0 || s > 100){
            score = 0; //default value
        }
        else {
            score = s;
        }
    }

    public boolean pass(){
        return (score >= 70);
    }
}

Student student1 = new Student("Aadit Mathur", 4);
if (student1.pass()) {
    System.out.println("Student passed lol");
} else {
    System.out.println("Yo is this Aadit Mathur??");
}
```

    Yo is this Aadit Mathur??


# Section 5.2: Constructors

- Popcorn Hacks: Your Turn (2 parts)

## Your Turn Part 1

- Make your own class with an integer variable
- Make a constructor for that
- Create an object and print the variable


```java
class harkiratPrisoner {
    public String name;
    public int age;
    public harkiratPrisoner(String n, int a) {
        name = n;
        age = a;
    }

    public void getInfo() {
        System.out.println(age);
        System.out.println(name);
    }
}

harkiratPrisoner prisoner = new harkiratPrisoner("Timmy", 100);
prisoner.getInfo();
```

    0
    Timmy


## Your Turn Part 2

Using the code you wrote before (you did do the previous popcorn hack… right?), complete the following

- Make a no-arg constructor
- Make a parameterized constructor
- “Make” a default constructor
- Please seperate all of those three into different code cells.

Also, you don’t actually have to use your previous code. I just thought it would be a good template.


```java
class harkiratPrisoner {
    public String name;
    public int age;
    public int inmate_id;

    public harkiratPrisoner() {
        name = "Garlic Bread";
        age = 1234;
        inmate_id = 1;
    }

    public harkiratPrisoner(String n, int a, int i) {
        name = n;
        age = a;
        inmate_id = i;
    }

    public void getInfo() {
        System.out.println(age);
        System.out.println(name);
        System.out.println(inmate_id);
    }
}

harkiratPrisoner prisoner = new harkiratPrisoner("Timmy", 100, 2);
prisoner.getInfo();
```

    100
    Timmy
    2


# Section 5.4: Accessor Methods

- Popcorn Hacks (1)

## Popcorn Hack

Gru is preparing for his big mission to steal the moon, and he needs to assign his minions various tasks based on their skills. Create a new getter method called skillLevel and print out the Minion’s skillLevelMinion class with the attributes name, task, and skillLevel. Implement some getter accessor methods, and then create a Minion object to retrieve its values.


```java
public class Minion {
    private String name;
    private String task;
    private int skillLevel;
    // Create  skillLevel instance variable

    public Minion(String n, String t, int s)
    {
        name = n;
        task = t;
        skillLevel = s;
    }

    // Getter Methods
    public String getName()
    {
        return name;
    }

    public String getTask()
    {
        return task;
    }

    public int getskillLevel() {
        return skillLevel;
    }
}
Minion Stuart = new Minion("Stuart", "Developing propulsion system", 10);
System.out.println(Stuart.getName());
System.out.println(Stuart.getTask());
System.out.println(Stuart.getskillLevel());
```

    Stuart
    Developing propulsion system
    10




# Section 5.41: toString Method

- Popcorn Hacks (1)

## Popcorn Hack

Return all the instance variables in Minion so that we can directly print the object values of the minion Kevin.


```java
public class Minion
{
    // Instance variables
    private double height;
    private String name;
    private String hair;
    private int eyes;

    // Default Constructor
    public Minion()
    {
        height = 3.7;
        name = "Bob";
        hair = "None";
        eyes = 2;
    }

    // Overloaded Constructor
    public Minion(double h, String n, String hr, int e)
    {
        height = h;
        name = n;
        hair = hr;
        eyes = e;
    }

    // Accessor Methods!
    public String toString()
    {
        return "Name: " + name + ", Height: " + height + " ft, Hair: " + hair + ", Eyes: " + eyes;
    }
}

// Create Minion object Kevin
Minion kevin = new Minion(4.10, "Kevin", "Sprout-Cut", 2);

// Print Kevin object
System.out.println(kevin);
```

    Name: Kevin, Height: 4.1 ft, Hair: Sprout-Cut, Eyes: 2


# Section 5.5: Mutator Methods

- Your Turn (3)

## Your Turn Part 1
Make your own class with your own getter method
Mutators: wait a minute, a “mutator” is a type of mutator method??? Yeah, Java is kinda wacky like that. Try not to think about it much. Anyways… these methods let you mutate data (basically change it). They can be called “set” methods or “setters.”


```java
public class Food {
    public String name;
    public int calories;

    public Food() {
        name = "";
        calories = 0;
    }

    public Food(String n, int c) {
        name = n;
        calories = c;
    }

    public int getCalories() {
        return calories;
    }

    public String getName() {
        return name;
    }

    public void getInfo() {
        System.out.println("Name: " + name);
        System.out.println("Calories: " + calories);
    }
}

Food pizzaSlice = new Food("Pizza Slice", 360);
System.out.println(pizzaSlice.getCalories());
System.out.println(pizzaSlice.getName());
pizzaSlice.getInfo();
```

    360
    Pizza Slice
    Name: Pizza Slice
    Calories: 360


## Your Turn Part 2
Make your own class with your own setter method


```java
public class Food {
    public String name;
    public int calories;
    public String description;

    public Food() {
        name = "";
        calories = 0;
        description = "";
    }

    public Food(String n, int c, String d) {
        name = n;
        calories = c;
        description = d;
    }

    public int getCalories() {
        return calories;
    }

    public String getName() {
        return name;
    }

    public String getDesc() {
        return description;
    }

    public void getInfo() {
        System.out.println("Name: " + name);
        System.out.println("Calories: " + calories);
        System.out.println("Description: " + description);
    }

    public void updateDesc(String newdesc) {
        description = newdesc;
    }
}

Food pizzaSlice = new Food("Pizza Slice", 360, "Savory Cheese and Tomato Dish");
System.out.println(pizzaSlice.getDesc());
System.out.println("-------------------------------------------");
pizzaSlice.updateDesc("Savory Italian Cheese and Tomato Pie");
System.out.println(pizzaSlice.getDesc());
```

    Pizza Slice
    360
    Savory Cheese and Tomato Dish
    Name: Pizza Slice
    Calories: 360
    Description: Savory Cheese and Tomato Dish
    -------------------------------------------
    Savory Italian Cheese and Tomato Pie


## Your Turn Part 3
Make your own class with:

- A constructor
- A getter
- A setter
Create an object and interact with it! Make sure you use both your setter and getter methods at least once.


```java
public class Food {
    public String name;
    public int calories;
    public String description;

    public Food() {
        name = "";
        calories = 0;
        description = "";
    }

    public Food(String n, int c, String d) {
        name = n;
        calories = c;
        description = d;
    }

    public int getCalories() {
        return calories;
    }

    public String getName() {
        return name;
    }

    public String getDesc() {
        return description;
    }

    public void getInfo() {
        System.out.println("Name: " + name);
        System.out.println("Calories: " + calories);
        System.out.println("Description: " + description);
    }

    public void updateDesc(String newdesc) {
        description = newdesc;
    }
}

Food pizzaSlice = new Food("Pizza Slice", 360, "Savory Cheese and Tomato Dish");
System.out.println(pizzaSlice.getName());
System.out.println(pizzaSlice.getCalories());
System.out.println(pizzaSlice.getDesc());
pizzaSlice.getInfo();
System.out.println("-------------------------------------------");
pizzaSlice.updateDesc("Savory Italian Cheese and Tomato Pie");
System.out.println(pizzaSlice.getDesc());
```

    Pizza Slice
    360
    Savory Cheese and Tomato Dish
    Name: Pizza Slice
    Calories: 360
    Description: Savory Cheese and Tomato Dish
    -------------------------------------------
    Savory Italian Cheese and Tomato Pie


# Section 5.6: Writing Methods

- Popcorn Hack (2)

## Popcorn Hack
- Add another static method to the Villain class
- Keep it minion themed and fun!


```java
import java.util.ArrayList;
import java.util.List;

public class Villain {
    // Instance variables
    public String name;
    public String evilPlan;
    public List<String> minions;
    public static int villainCount = 0;
    private static List<Villain> allVillains = new ArrayList<>();

    public Villain(String name, String evilPlan) {
        this.name = name;
        this.evilPlan = evilPlan;
        this.minions = new ArrayList<>();
        villainCount++;
        allVillains.add(this);
    }

    public void addMinion(String minion) {
        minions.add(minion);
        System.out.println(minion + " has been added to " + name + "'s army.");
    }

    public void describeVillain() {
        System.out.println(name + " is planning to: " + evilPlan);
        System.out.println("They have " + minions.size() + " minions.");
    }

    public static int getVillainCount() {
        return villainCount;
    }

    // unite le minion
    public static List<String> uniteMinions() {
        List<String> unitedMinions = new ArrayList<>();
        for (Villain villain : allVillains) {
            unitedMinions.addAll(villain.minions);
        }
        return unitedMinions;
    }
}

public class Main {
    public static void main(String[] args) {
        Villain.villainCount = 0;

        Villain gru = new Villain("Gru", "steal the moon!");
        Villain vector = new Villain("Vector", "take over the world with magnitude and direction!");

        System.out.println("=== Adding Minions ===");
        gru.addMinion("Kevin");
        gru.addMinion("Stuart");
        gru.addMinion("Bob");

        vector.addMinion("Henchman 1");

        System.out.println();

        System.out.println("=== Villain Descriptions ===");
        gru.describeVillain();
        System.out.println();
        vector.describeVillain();
        System.out.println();

        System.out.println("=== Total Villain Count ===");
        System.out.println("There are " + Villain.getVillainCount() + " villains in the world.");
        System.out.println();
        System.out.println("=== United Minion Army ===");
        List<String> unitedMinions = Villain.uniteMinions();
        System.out.println("All minions from all villains have united:");
        for (String minion : unitedMinions) {
            System.out.println("- " + minion);
        }
    }
}
```

## Popcorn Hack
Dr. Nefario is busy assigning work for the minions, and he needs your help to organize his group. Your mission is to write and implement a Java classes for each minion which includes their name, gadgets, personality, and more. Get ready to make Dr. Nefario’s life easier and keep the minions organized!


```java
import java.util.ArrayList;
import java.util.List;

public class Minion {
    private String name;
    private List<String> gadgets;
    private String personality;
    private List<String> skills;

    public Minion(String name, String personality) {
        this.name = name;
        this.personality = personality;
        this.gadgets = new ArrayList<>();
        this.skills = new ArrayList<>();
    }

    public void addGadget(String gadget) {
        gadgets.add(gadget);
        System.out.println(gadget + " has been added to " + name + "'s gadget collection.");
    }

    public void addSkill(String skill) {
        skills.add(skill);
        System.out.println(skill + " has been added to " + name + "'s skillset.");
    }

    public void describeMinion() {
        System.out.println("=== Minion Description ===");
        System.out.println("Name: " + name);
        System.out.println("Personality: " + personality);
        System.out.println("Gadgets: " + (gadgets.isEmpty() ? "None" : gadgets));
        System.out.println("Skills: " + (skills.isEmpty() ? "None" : skills));
        System.out.println();
    }

    public String getName() {
        return name;
    }

    public String getPersonality() {
        return personality;
    }

    public List<String> getGadgets() {
        return gadgets;
    }

    public List<String> getSkills() {
        return skills;
    }
}

public class Main {
    public static void main(String[] args) {
        Minion kevin = new Minion("Kevin", "Brave and responsible");
        Minion stuart = new Minion("Stuart", "Playful and funny");
        Minion bob = new Minion("Bob", "Innocent and curious");

        kevin.addGadget("Nacho Cheese Gun Ray");
        kevin.addGadget("Shrink Ray Gun");
        stuart.addGadget("Fart Gun .-.");
        bob.addGadget("Teddy Bear");

        kevin.addSkill("Engineering");
        stuart.addSkill("Music");
        bob.addSkill("Cuteness overload");

        kevin.describeMinion();
        stuart.describeMinion();
        bob.describeMinion();
    }
}

```

# Section 5.7: Static Variables and Methods

- Popcorn Hack (2)

## Popcorn Hack
Look at some of the code I’ve commented out and try experimenting with gadgetsList if you want. Otherwise, just make a static variable that serves a purpose in the program.


```java
import java.util.ArrayList;
import java.util.List;

public class Minion {
    private String name;
    private List<String> gadgets;
    private String personality;
    private List<String> skills;
    public static int gadgetCount = 0;

    public Minion(String name, String personality) {
        this.name = name;
        this.personality = personality;
        this.gadgets = new ArrayList<>();
        this.skills = new ArrayList<>();
    }

    public void addGadget(String gadget) {
        gadgets.add(gadget);
        gadgetCount++;
        System.out.println(gadget + " has been added to " + name + "'s gadget collection.");
    }

    public void addSkill(String skill) {
        skills.add(skill);
        System.out.println(skill + " has been added to " + name + "'s skillset.");
    }

    public void describeMinion() {
        System.out.println("=== Minion Description ===");
        System.out.println("Name: " + name);
        System.out.println("Personality: " + personality);
        System.out.println("Gadgets: " + (gadgets.isEmpty() ? "None" : gadgets));
        System.out.println("Skills: " + (skills.isEmpty() ? "None" : skills));
        System.out.println();
    }

    public static void printTotalGadgetCount() {
        System.out.println("Total gadgets across all minions: " + gadgetCount);
    }
}

public class Main {
    public static void main(String[] args) {
        Minion kevin = new Minion("Kevin", "erm");
        Minion stuart = new Minion("Stuart", "nonchalant");
        Minion bob = new Minion("Bob", "KING BOB!!");

        kevin.addGadget("m4 carbine");
        kevin.addGadget("shrink ray");
        stuart.addGadget("Fart Gun TM");
        bob.addGadget("Teddy Bear");

        kevin.addSkill("leadership ig?");
        stuart.addSkill("nonchalance");
        bob.addSkill("king bob 2nd attack.");

        kevin.describeMinion();
        stuart.describeMinion();
        bob.describeMinion();

        Minion.printTotalGadgetCount();
    }
}

```

## Popcorn Hack
Dr. Nefario and Gru need to calculate the cost of their equipment to remain under the budget for this year! Add a second parameter to the Gadget constructor to include cost for Gadget instances, and make a static method to calculate the price of all gadgets that have been made so far.


```java
import java.util.ArrayList;
import java.util.List;

class Gadget {
    private String name;
    private double cost;
    public static double totalCost = 0;

    public Gadget(String name, double cost) {
        this.name = name;
        this.cost = cost;
        totalCost += cost;
    }

    public String getName() {
        return name;
    }

    public double getCost() {
        return cost;
    }

    public static double calculateTotalCost() {
        return totalCost;
    }
}

class Minion {
    private String name;
    private List<Gadget> gadgets;
    private String personality;
    private List<String> skills;

    public Minion(String name, String personality) {
        this.name = name;
        this.personality = personality;
        this.gadgets = new ArrayList<>();
        this.skills = new ArrayList<>();
    }

    public void addGadget(Gadget gadget) {
        gadgets.add(gadget);
        System.out.println(gadget.getName() + " costing $" + gadget.getCost() + " has been added to " + name + "'s gadget collection.");
    }

    public void addSkill(String skill) {
        skills.add(skill);
        System.out.println(skill + " has been added to " + name + "'s skillset.");
    }

    public void describeMinion() {
        System.out.println("=== Minion Description ===");
        System.out.println("Name: " + name);
        System.out.println("Personality: " + personality);
        System.out.println("Gadgets: " + (gadgets.isEmpty() ? "None" : gadgets));
        System.out.println("Skills: " + (skills.isEmpty() ? "None" : skills));
        for (Gadget gadget : gadgets) {
            System.out.println(gadget.getName() + " - $" + gadget.getCost());
        }
        System.out.println();
    }
}

public class Main {
    public static void main(String[] args) {
        Minion kevin = new Minion("Kevin", "erm");
        Minion stuart = new Minion("Stuart", "nonchalant");
        Minion bob = new Minion("Bob", "KING BOB!!");

        kevin.addGadget(new Gadget("Banana Blaster", 150.0));
        kevin.addGadget(new Gadget("Shrink Ray", 250.0));
        stuart.addGadget(new Gadget("Fart Gun", 100.0));
        bob.addGadget(new Gadget("Teddy Bear", 30.0));

        kevin.addSkill("leadership ig?");
        stuart.addSkill("nonchalance");
        bob.addSkill("king bob 2nd attack.");

        kevin.describeMinion();
        stuart.describeMinion();
        bob.describeMinion();

        System.out.println("Total cost of all gadgets: $" + Gadget.calculateTotalCost());
    }
}

```

# Section 5.8: Scope and Access

Popcorn Hack (1)

## Popcorn Hack
Figure out why the happiness level and the energy level is not showing up the way we want it to. First one to do so will get a high five from Trevor Huang.


```java
public class Minion {
    private int happinessLevel;
    private int energyLevel;

    public Minion(int happiness, int energy) {
        this.happinessLevel = happiness;
        this.energyLevel = energy;
    }

    public void showLevels() {
        System.out.println("Happiness Level: " + happinessLevel);
        System.out.println("Energy Level: " + energyLevel);
    }

    public void increaseHappiness() {
        happinessLevel += 10;
    }

    public void decreaseEnergy() {
        energyLevel -= 5;
    }
}
```

# 5.9: This Keyword

- Popcorn Hacks (A lot)

## Popcorn Hack
The Minions are preparing for a big event where the tallest and fastest minion will get to assist Gru on his next mission! You’ve been called in as the official “Minion Trainer” to help compare the minions. The goal is to see which minion is more prepared for the mission.


```java
import java.util.ArrayList;
import java.util.List;

class Minion {
    private String name;
    private int height;  // Height in centimeters
    private int speed;   // Speed in meters per second
    private List<String> skills;

    public Minion(String name, int height, int speed) {
        this.name = name;
        this.height = height;
        this.speed = speed;
        this.skills = new ArrayList<>();
    }

    public String getName() {
        return name;
    }

    public int getHeight() {
        return height;
    }

    public int getSpeed() {
        return speed;
    }

    public void addSkill(String skill) {
        skills.add(skill);
        System.out.println(skill + " has been added to " + name + "'s skillset.");
    }

    public void describeMinion() {
        System.out.println("Name: " + name);
        System.out.println("Height: " + height + " cm");
        System.out.println("Speed: " + speed + " m/s");
        System.out.println("Skills: " + (skills.isEmpty() ? "None" : skills));
        System.out.println();
    }

    public static Minion compareHeight(Minion m1, Minion m2) {
        return (m1.getHeight() > m2.getHeight()) ? m1 : m2;
    }

    public static Minion compareSpeed(Minion m1, Minion m2) {
        return (m1.getSpeed() > m2.getSpeed()) ? m1 : m2;
    }
}

public class MinionTrainer {
    public static void main(String[] args) {
        // Create some minions
        Minion kevin = new Minion("Kevin", 105, 10);  // Height in cm, Speed in m/s
        Minion stuart = new Minion("Stuart", 90, 12);
        Minion bob = new Minion("Bob", 85, 8);

        // Describing the minions
        kevin.addSkill("Engineering");
        stuart.addSkill("Music");
        bob.addSkill("Cuteness");

        kevin.describeMinion();
        stuart.describeMinion();
        bob.describeMinion();

        // Compare height and speed
        Minion tallest = Minion.compareHeight(kevin, stuart);
        tallest = Minion.compareHeight(tallest, bob);

        Minion fastest = Minion.compareSpeed(kevin, stuart);
        fastest = Minion.compareSpeed(fastest, bob);

        System.out.println("The tallest minion is: " + tallest.getName() + " with a height of " + tallest.getHeight() + " cm.");
        System.out.println("The fastest minion is: " + fastest.getName() + " with a speed of " + fastest.getSpeed() + " m/s.");
    }
}

```

What is the output of the statement System.out.println("minion 1 speed: " + minion1.speed())?
The code will result in a compilation error because there is no method named speed() in the Minion class. The correct method call should be minion1.getSpeed(). Thus, the correct statement would be: System.out.println("minion 1 speed: " + minion1.getSpeed());

Why is the this keyword useful in the getSpeed() method?
The this keyword refers to the current instance of the object. In the getSpeed() method, this.speed ensures that we are accessing the speed variable of the current Minion object. It eliminates ambiguity, especially when there are local variables or parameters with the same name as instance variables. In this case, although not strictly necessary, it provides clarity in understanding the code.

What does the isTallerThan() method compare?
The isTallerThan() method compares the height of the current Minion object with the height of another Minion passed as the otherMinion parameter. It returns true if the current Minion is taller than the other, and false otherwise.

What happens to the result of System.out.println("Is minion1 taller than minion2? " + minion1.isTallerThan(minion2)) after minion2.setHeight(50) is called?
Initially, minion1 has a height of 43 and minion2 has a height of 28, so the output will be: Is minion1 taller than minion2? true. After minion2.setHeight(50) is called, minion2 becomes taller than minion1. Thus, the output changes to: Is minion1 still taller than minion2? false.

Who should be selected for the mission?
Since the selection is based on height, after minion2's height is set to 50, minion2 should be selected for the mission because they are now taller than minion1.

## Popcorn Hack
In the bustling kitchen of Gru’s secret lab, the Minions were on a mission to create the perfect pancake for their breakfast feast. Kevin needed to make sure each pancake was perfectly round, with the exact right circumference for maximum deliciousness. But how? He needed to figure out the precise relationship between the pancake’s radius and its circumference. Help Kevin create the perfect pancake!

The MinionPancake class below should have:

A radius field
A method setRadius(double radius): have this set as the radius
A method calculateCircumference(): have this calculate the circumference of a circle with radius 5 and print it
(hint: use Math.PI for ‘π’)


```java
class MinionPancake {
    private double radius;

    public void setRadius(double radius) {
        this.radius = radius;
    }

    public void calculateCircumference() {
        double circumference = 2 * Math.PI * radius;
        System.out.println("The circumference of the pancake with radius " + radius + " is: " + circumference);
    }
}

public class Main {
    public static void main(String[] args) {
        MinionPancake pancake = new MinionPancake();
        pancake.setRadius(5); 
        pancake.calculateCircumference(); 
    }
}
```

# Homework

It took me quite some time to get here. Seriously tho. Why so much HW?!?!?

5 Hacks bruh.

## Hack 1
Gru has just recently stopped El Macho from destroying the world. But now, Gru needs to separate the leftover purple minions and the yellow minions so that he can cure the infected minions. He then needs to organize the minions in terms of recovery time and usefulness. To do this, Gru needs you to make a minion class with the instance variables color, name, energy levels, gadgets, hair, height




```java
import java.util.ArrayList;
import java.util.List;

public class Minion {
    private String color;
    private String name;
    private int energyLevels;
    private List<String> gadgets;
    private String hair;
    private int height;

    public Minion(String color, String name, int energyLevels, List<String> gadgets, String hair, int height) {
        this.color = color;
        this.name = name;
        this.energyLevels = energyLevels;
        this.gadgets = gadgets;
        this.hair = hair;
        this.height = height;
    }

    public String getColor() {
        return color;
    }

    public String getName() {
        return name;
    }

    public int getEnergyLevels() {
        return energyLevels;
    }

    public List<String> getGadgets() {
        return gadgets;
    }

    public String getHair() {
        return hair;
    }

    public int getHeight() {
        return height;
    }

    public void displayInfo() {
        System.out.println("Minion Name: " + name);
        System.out.println("Color: " + color);
        System.out.println("Energy Levels: " + energyLevels);
        System.out.println("Gadgets: " + gadgets);
        System.out.println("Hair: " + hair);
        System.out.println("Height: " + height);
    }
}

public class Main {
    public static void main(String[] args) {
        List<String> gadgets1 = new ArrayList<>();
        gadgets1.add("Laser");
        gadgets1.add("Jetpack");

        List<String> gadgets2 = new ArrayList<>();
        gadgets2.add("Grappling Hook");

        Minion yellowMinion = new Minion("Yellow", "Kevin", 80, gadgets1, "Short", 43);
        Minion purpleMinion = new Minion("Purple", "Tim", 60, gadgets2, "Long", 40);

        yellowMinion.displayInfo();
        System.out.println();
        purpleMinion.displayInfo();
    }
}

```

## Hack 2
Now Gru needs you to make a default constructor for all the NPC minions. Assign each default minion a default color,name,energy level, gadget, hair, and height.



```java
import java.util.ArrayList;
import java.util.List;

public class Minion {
    private String color;
    private String name;
    private int energyLevels;
    private List<String> gadgets;
    private String hair;
    private int height;

    public Minion(String color, String name, int energyLevels, List<String> gadgets, String hair, int height) {
        this.color = color;
        this.name = name;
        this.energyLevels = energyLevels;
        this.gadgets = gadgets;
        this.hair = hair;
        this.height = height;
    }

    public Minion() {
        this.color = "Yellow";
        this.name = "Bob";
        this.energyLevels = 100;
        this.gadgets = new ArrayList<>();
        this.gadgets.add("Banana Peeler");
        this.hair = "Short";
        this.height = 40;
    }

    public String getColor() {
        return color;
    }

    public String getName() {
        return name;
    }

    public int getEnergyLevels() {
        return energyLevels;
    }

    public List<String> getGadgets() {
        return gadgets;
    }

    public String getHair() {
        return hair;
    }

    public int getHeight() {
        return height;
    }

    public void displayInfo() {
        System.out.println("Minion Name: " + name);
        System.out.println("Color: " + color);
        System.out.println("Energy Levels: " + energyLevels);
        System.out.println("Gadgets: " + gadgets);
        System.out.println("Hair: " + hair);
        System.out.println("Height: " + height);
    }
}

public class Main {
    public static void main(String[] args) {
        List<String> gadgets1 = new ArrayList<>();
        gadgets1.add("Laser");
        gadgets1.add("Jetpack");

        List<String> gadgets2 = new ArrayList<>();
        gadgets2.add("Grappling Hook");

        Minion yellowMinion = new Minion("Yellow", "Kevin", 80, gadgets1, "Short", 43);
        Minion purpleMinion = new Minion("Purple", "Tim", 60, gadgets2, "Long", 40);
        Minion defaultMinion = new Minion();

        yellowMinion.displayInfo();
        System.out.println();
        purpleMinion.displayInfo();
        System.out.println();
        defaultMinion.displayInfo();
    }
}

```

## Hack 3
Now please make a parameterized constructor to create the main-character minions easily.



```java
import java.util.ArrayList;
import java.util.List;

public class Minion {
    private String color;
    private String name;
    private int energyLevels;
    private List<String> gadgets;
    private String hair;
    private int height;

    public Minion(String color, String name, int energyLevels, List<String> gadgets, String hair, int height) {
        this.color = color;
        this.name = name;
        this.energyLevels = energyLevels;
        this.gadgets = gadgets;
        this.hair = hair;
        this.height = height;
    }

    public Minion() {
        this.color = "Yellow";
        this.name = "Bob";
        this.energyLevels = 100;
        this.gadgets = new ArrayList<>();
        this.gadgets.add("Banana Peeler");
        this.hair = "Short";
        this.height = 40;
    }

    public void displayInfo() {
        System.out.println("Minion Name: " + name);
        System.out.println("Color: " + color);
        System.out.println("Energy Levels: " + energyLevels);
        System.out.println("Gadgets: " + gadgets);
        System.out.println("Hair: " + hair);
        System.out.println("Height: " + height);
    }

    public static void main(String[] args) {
        List<String> gadgets1 = new ArrayList<>();
        gadgets1.add("Laser");
        gadgets1.add("Jetpack");

        List<String> gadgets2 = new ArrayList<>();
        gadgets2.add("Grappling Hook");

        Minion yellowMinion = new Minion("Yellow", "Kevin", 80, gadgets1, "Short", 43);
        Minion purpleMinion = new Minion("Purple", "Tim", 60, gadgets2, "Long", 40);
        Minion defaultMinion = new Minion();
        Minion mainCharacterMinion = new Minion("Yellow", "Gru", 90, new ArrayList<>(), "Bald", 55);

        yellowMinion.displayInfo();
        System.out.println();
        purpleMinion.displayInfo();
        System.out.println();
        defaultMinion.displayInfo();
        System.out.println();
        mainCharacterMinion.displayInfo();
    }
}

```

## Hack 4
Create three minions and print out their values(color, name, energy levels, gadgets, hair, height)


```java
import java.util.ArrayList;
import java.util.List;

public class Minion {
    private String color;
    private String name;
    private int energyLevels;
    private List<String> gadgets;
    private String hair;
    private int height;

    public Minion(String color, String name, int energyLevels, List<String> gadgets, String hair, int height) {
        this.color = color;
        this.name = name;
        this.energyLevels = energyLevels;
        this.gadgets = gadgets;
        this.hair = hair;
        this.height = height;
    }

    public Minion() {
        this.color = "Yellow";
        this.name = "Bob";
        this.energyLevels = 100;
        this.gadgets = new ArrayList<>();
        this.gadgets.add("Banana Peeler");
        this.hair = "Short";
        this.height = 40;
    }

    public void displayInfo() {
        System.out.println("Minion Name: " + name);
        System.out.println("Color: " + color);
        System.out.println("Energy Levels: " + energyLevels);
        System.out.println("Gadgets: " + gadgets);
        System.out.println("Hair: " + hair);
        System.out.println("Height: " + height);
    }

    public static void main(String[] args) {
        List<String> gadgets1 = new ArrayList<>();
        gadgets1.add("Laser");
        gadgets1.add("Jetpack");

        List<String> gadgets2 = new ArrayList<>();
        gadgets2.add("Grappling Hook");

        List<String> gadgets3 = new ArrayList<>();
        gadgets3.add("Time Machine");

        Minion minion1 = new Minion("Yellow", "Kevin", 80, gadgets1, "Short", 43);
        Minion minion2 = new Minion("Purple", "Tim", 60, gadgets2, "Long", 40);
        Minion minion3 = new Minion("Green", "Stuart", 75, gadgets3, "Spiky", 45);

        minion1.displayInfo();
        System.out.println();
        minion2.displayInfo();
        System.out.println();
        minion3.displayInfo();
    }
}
```

## Hack 5
Gru wants to make sure his workers are not overworked as per OSHA. So, Gru wants you to print out the average energy levels of all his Minions. (Hint: you should use static variables)


```java
import java.util.ArrayList;
import java.util.List;

public class Minion {
    private String color;
    private String name;
    private int energyLevels;
    private List<String> gadgets;
    private String hair;
    private int height;

    private static int totalEnergyLevels = 0;
    private static int minionCount = 0;

    public Minion(String color, String name, int energyLevels, List<String> gadgets, String hair, int height) {
        this.color = color;
        this.name = name;
        this.energyLevels = energyLevels;
        this.gadgets = gadgets;
        this.hair = hair;
        this.height = height;

        totalEnergyLevels += energyLevels;
        minionCount++;
    }

    public Minion() {
        this.color = "Yellow";
        this.name = "Bob";
        this.energyLevels = 100;
        this.gadgets = new ArrayList<>();
        this.gadgets.add("Banana Peeler");
        this.hair = "Short";
        this.height = 40;

        totalEnergyLevels += energyLevels;
        minionCount++;
    }

    public void displayInfo() {
        System.out.println("Minion Name: " + name);
        System.out.println("Color: " + color);
        System.out.println("Energy Levels: " + energyLevels);
        System.out.println("Gadgets: " + gadgets);
        System.out.println("Hair: " + hair);
        System.out.println("Height: " + height);
    }

    public static double getAverageEnergyLevels() {
        return minionCount == 0 ? 0 : (double) totalEnergyLevels / minionCount;
    }

    public static void main(String[] args) {
        List<String> gadgets1 = new ArrayList<>();
        gadgets1.add("Laser");
        gadgets1.add("Jetpack");

        List<String> gadgets2 = new ArrayList<>();
        gadgets2.add("Grappling Hook");

        List<String> gadgets3 = new ArrayList<>();
        gadgets3.add("Time Machine");

        Minion minion1 = new Minion("Yellow", "Kevin", 80, gadgets1, "Short", 43);
        Minion minion2 = new Minion("Purple", "Tim", 60, gadgets2, "Long", 40);
        Minion minion3 = new Minion("Green", "Stuart", 75, gadgets3, "Spiky", 45);

        minion1.displayInfo();
        System.out.println();
        minion2.displayInfo();
        System.out.println();
        minion3.displayInfo();
        System.out.println();

        System.out.println("Average Energy Levels of Minions: " + Minion.getAverageEnergyLevels());
    }
}

```

## For 0.90+
Dr. Nefario is trying to assign a recovery time for each minion! Minions who were purple and got cured are very tired, and so are a lot of minions with low energy levels. Create a simple algorithm to calculate how long each minion needs to recover based on their color and energy levels.


```java
import java.util.ArrayList;
import java.util.List;

public class Minion {
    private String color;
    private String name;
    private int energyLevels;
    private List<String> gadgets;
    private String hair;
    private int height;
    private int recoveryTime;

    public Minion(String color, String name, int energyLevels, List<String> gadgets, String hair, int height) {
        this.color = color;
        this.name = name;
        this.energyLevels = energyLevels;
        this.gadgets = gadgets;
        this.hair = hair;
        this.height = height;
        this.recoveryTime = calculateRecoveryTime();
    }

    public Minion() {
        this.color = "Yellow";
        this.name = "Bob";
        this.energyLevels = 100;
        this.gadgets = new ArrayList<>();
        this.gadgets.add("Banana Peeler");
        this.hair = "Short";
        this.height = 40;
        this.recoveryTime = calculateRecoveryTime();
    }

    private int calculateRecoveryTime() {
        int time = 0;

        if (color.equalsIgnoreCase("purple")) {
            time += 10;
        }

        if (energyLevels < 50) {
            time += 15;
        } else if (energyLevels < 80) {
            time += 5;
        }

        return time;
    }

    public void displayInfo() {
        System.out.println("Minion Name: " + name);
        System.out.println("Color: " + color);
        System.out.println("Energy Levels: " + energyLevels);
        System.out.println("Gadgets: " + gadgets);
        System.out.println("Hair: " + hair);
        System.out.println("Height: " + height);
        System.out.println("Recovery Time: " + recoveryTime + " hours");
    }

    public static void main(String[] args) {
        List<String> gadgets1 = new ArrayList<>();
        gadgets1.add("Laser");
        gadgets1.add("Jetpack");

        List<String> gadgets2 = new ArrayList<>();
        gadgets2.add("Grappling Hook");

        List<String> gadgets3 = new ArrayList<>();
        gadgets3.add("Time Machine");

        Minion minion1 = new Minion("Yellow", "Kevin", 80, gadgets1, "Short", 43);
        Minion minion2 = new Minion("Purple", "Tim", 40, gadgets2, "Long", 40);
        Minion minion3 = new Minion("Green", "Stuart", 75, gadgets3, "Spiky", 45);

        minion1.displayInfo();
        System.out.println();
        minion2.displayInfo();
        System.out.println();
        minion3.displayInfo();
    }
}
```

## Extra Extra (Please save my CSA grade oh great grader)

I present to you... 2D Matrix Multiplication using Objects and Classes (Unit 8+ Unit 5)




```java
class Matrix {
    private int[][] data;
    private int rows;
    private int cols;

    public Matrix(int rows, int cols) {
        this.rows = rows;
        this.cols = cols;
        data = new int[rows][cols];
    }

    public void setValue(int row, int col, int value) {
        if (row >= 0 && row < rows && col >= 0 && col < cols) {
            data[row][col] = value;
        }
    }

    public int getValue(int row, int col) {
        if (row >= 0 && row < rows && col >= 0 && col < cols) {
            return data[row][col];
        }
        return 0;
    }

    public Matrix multiply(Matrix other) {
        if (this.cols != other.rows) {
            throw new IllegalArgumentException("Matrices cannot be multiplied");
        }

        Matrix result = new Matrix(this.rows, other.cols);
        for (int i = 0; i < this.rows; i++) {
            for (int j = 0; j < other.cols; j++) {
                for (int k = 0; k < this.cols; k++) {
                    result.data[i][j] += this.data[i][k] * other.data[k][j];
                }
            }
        }
        return result;
    }

    public void display() {
        for (int i = 0; i < rows; i++) {
            for (int j = 0; j < cols; j++) {
                System.out.print(data[i][j] + " ");
            }
            System.out.println();
        }
    }
}

Matrix matrixA = new Matrix(2, 3);
Matrix matrixB = new Matrix(3, 2);

matrixA.setValue(0, 0, 1);
matrixA.setValue(0, 1, 2);
matrixA.setValue(0, 2, 3);
matrixA.setValue(1, 0, 4);
matrixA.setValue(1, 1, 5);
matrixA.setValue(1, 2, 6);

matrixB.setValue(0, 0, 7);
matrixB.setValue(0, 1, 8);
matrixB.setValue(1, 0, 9);
matrixB.setValue(1, 1, 10);
matrixB.setValue(2, 0, 11);
matrixB.setValue(2, 1, 12);

Matrix result = matrixA.multiply(matrixB);

System.out.println("Matrix A:");
matrixA.display();
System.out.println("Matrix B:");
matrixB.display();
System.out.println("Result of A * B:");
result.display();


```

    Matrix A:
    1 2 3 
    4 5 6 
    Matrix B:
    7 8 
    9 10 
    11 12 
    Result of A * B:
    58 64 
    139 154 


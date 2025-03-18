---
toc: True
comments: True
layout: post
title: Calculator Enactment
description: In mathematics, an expression or mathematical expression is a finite combination of symbols that is well-formed according to rules, like PEMDAS. In computers, expression can be hard to calculate with precedence rules and user input errors to handle computer math we often convert strings into a notation like rpn to solve the problem.
courses: {'csa': {'week': 25}}
type: ccc
---

## Hack
Review this code for key data structures.  You will be required to enact a Calculator in the classroom.

Here are the guidelines...

1. Enactment starts with Original Expression, turns into Tokenized Expression, then to RPN, and finishes with Final Result.
2. Appoint a Caller(s).  A caller is a person who prompts the figures (tokens) through the steps of the calculations.  There could be a person that is the overall Caller and others that coordinate entrance and exits into Queues or Stacks.
3. Create two to three Calculation expressions, one simple and one interesting.  Assign people to be a Token, aka TermOrOperator.  They will need to move through steps of calculation and into Queues or Stacks.
4. On Calculation, you will need to simulate the compression of two to three TermOrOperator becoming a single TermOrOperator.  This process will continue until you obtain a result.
5. Do not rush through this, you will be judged for clarity and accuracy on representing alogorithm.  It would be best if you simulated all the steps, as the main System.out.println shows it.
6. To be a TermOrOperator, there are phone apps that make big numbers or symbols.   You could change your representation on phone after a calculation, making your phone calculate to intermediate step.
7. Forming teams in class of 9-10 would be best, three teams per class.  Work it out.  You have a class and a half, finals will be in Office Hours.
8. Step through code in debugger, this will help you visualize.  Code is in [Hacks](https://github.com/nighthawkcoders/spring_portfolio/tree/master/src/main/java/com/nighthawk/spring_portfolio/hacks/calculator) in Spring Portfolio.
9. There will be a write-up and capture that needs to be a part of this assignment and blog.

### Calculator Project/Hack
The intention of this project is to use the RPN technique to calculate an expression.   This led to breaking down the expression into objects as follows.  


```java
import java.util.function.BiFunction;

/**
 * Token class
 * A Token is the key component of a mathematical expression
 * - Operators.  define the operator token, precedence, and mathematical calculation
 * - Parenthesis.  used to group terms
 */
public class Token {
    private final Character token;
    private final int precedence;
    private final BiFunction<Double, Double, Double> calculation;
    private final int numArgs;

    // Constructor for passive token, used for non-operator tokens
    public Token() {
        this('0');  // telescope to next constructor
    }

    // Constructor for simple token, used for parenthesis
    public Token(Character token) {
        this(token,0,null,0); // telescope to next constructor
    }

    // Constructor for operators, contains precedence and calculation method
    public Token(Character token, int precedence,  BiFunction<Double, Double, Double> calculation, int numArgs) {
        this.token = token;
        this.precedence = precedence;
        this.calculation = calculation;
        this.numArgs = numArgs;
    }

    // Getter for token
    public Character getToken() {
        return token;
    }

    // Getter for precedence
    public int getPrecedence() {
        return precedence;
    }

    public int getNumArgs() {
        return numArgs;
    }

    // Is precedent calculation
    public boolean isPrecedent(Token token) {
        return this.precedence > token.getPrecedence();
    }

    // Math calculation for operator and operands
    public Double calculate(Double operand1, Double operand2) {
        return this.calculation.apply(operand1, operand2);
    }

    // String return for token / operator
    public String toString() {
        return this.token.toString();
    }
    
}
```


```java
import java.util.function.BiFunction;

/**
 * TermOrOperator class is a subclass of Token
 * TermOrOperator is used to define the parts of a mathematical expression
 * - Values.  a string representation of the numerical value in the expression
 * - Operators.  define the operator token, precedence, and mathematical calculation
 * - Parenthesis.  used to group terms
 */
public class TermOrOperator extends Token {
    private final String value;

    // Constructor for values
    public TermOrOperator(String value) {
        this.value = value;
    }

    // Constructor for parenthesis
    public TermOrOperator(Character token) {
        super(token);
        this.value = null;
    } 

    // Constructor for operators
    public TermOrOperator(Character token, int precedence, BiFunction<Double, Double, Double> calculation) {
        super(token, precedence, calculation, 2);
        this.value = null;
    }

    // Constructor for operators
    public TermOrOperator(Character token, int precedence, BiFunction<Double, Double, Double> calculation, int numArgs) {
        super(token, precedence, calculation, numArgs);
        this.value = null;
    }

    // Get method for retrieving value
    public String getValue() {
        return value;
    }

    // toString method to return value according to type: value, operator, or parenthesis
    public String toString() {
        if (this.value == null) {
            return super.toString();
        }
        return this.value;
    }   
}
```


```java
import java.util.Map;
import java.util.function.BiFunction;
import java.util.HashMap;

/**
 * Terms class is a collection of Term objects
 * Terms are used to define the parts of a mathematical expression
 * - Operators.  define the operator, precedence, and mathematical calculation
 * - Parenthesis.  used to seperate and group terms
 * - Space. Used to seperate terms
 * 
 * A Map is choosen as the data structure because it enables fast lookups of Terms
 */
public class Tokens {
    // Terms are stored in map, using Term token as the key
    private Map<Character, TermOrOperator> map;

    // Constructor initializes map
    public Tokens() {
        this.map = new HashMap<>();
    }

    // Put method for adding Parenthesis and Space
    public void put(Character token) {
        this.map.put(token, new TermOrOperator(token));
    }

    // Put method for adding Operators, precedence, and calculation
    public void put(Character token, int precedence, BiFunction<Double, Double, Double> calculation, int numArgs) {
        this.map.put(token, new TermOrOperator(token, precedence, calculation, numArgs));
    }

    // Put method for adding Operators, precedence, and calculation
    public void put(Character token, int precedence, BiFunction<Double, Double, Double> calculation) {
        this.map.put(token, new TermOrOperator(token, precedence, calculation));
    }

    // Get method for retrieving Term based on token lookup  
    public TermOrOperator get(Character token) {
        return this.map.get(token);
    }

    // Get precedence method for retrieving precedence based on token lookup
    public int getPrecedence(Character token) {
        return this.map.get(token).getPrecedence();
    }

    // Contains method for checking if token exists in map
    public boolean contains(Character token) {
        return this.map.containsKey(token);
    }

    // toString method for converting entire map to string
    public String toString() {
        return this.map.toString();
    }

}

```

### Calulator takes an Expression
Ultimately the class Calculator constructs a calculation object for an expression. This calculates the expression and saves the result and each of the intermediate step into instance variables.


```java
import java.util.ArrayList;
import java.util.Stack;

/** In mathematics,
    an expression or mathematical expression is a finite combination of symbols that is well-formed
    according to rules that depend on the context.
   In computers,
    expression can be hard to calculate with precedence rules and user input errors
    to handle computer math we often convert strings into reverse polish notation
*/
public class Calculator {
    // Key instance variables
    private final String expression;
    private ArrayList<TermOrOperator> terms = new ArrayList<>();
    private ArrayList<TermOrOperator> rpnTerms = new ArrayList<>();
    private Tokens operators = new Tokens();
    private Tokens seperators = new Tokens();
    private Double result = 0.0;

    /**
     * Calculator constructor to create a calculation object for an expression
     * This calculates the expression and saves the result and intermediate steps in instance variables
     * 
     * @param expression
     */
    public Calculator(String expression) {   
        // set up tokens used in an calculator
        initOperators();
        initSeperators();

        // original expression
        this.expression = expression;

        // parse expression into individual terms
        this.termTokenizer();

        // place terms into reverse polish notation
        this.termsToRPN();

        // calculate reverse polish notation expression into a result
        this.rpnToResult();
    }

    /** 
     * Method to initialize operators, precedence, and calculation
     * Fundamental to data structures is the ability to store and retrieve data quickly
     * In this case, we are using a map to store operators and their precedence and calculation methods.
     * 
     * Note, that through overloaded methods, we can store operators as Terms with different numbers of arguments
     * This is specifically useful, in this case, for unary operators like square root
     */
    private void initOperators() {
        // Operators contain a token, precedence, and calculation using BiFunction
        operators.put('*', 3, (a, b) -> a * b);
        operators.put('/', 3, (a, b) -> a / b);
        operators.put('%', 3, (a, b) -> a % b);
        operators.put('+', 4, (a, b) -> a + b);
        operators.put('-', 4, (a, b) -> a - b);
        operators.put('^', 2, (a, b) -> Math.pow(a, b)); // Power operation
        operators.put('√', 1, (a, b) -> Math.sqrt(a), 1); // Square root operation
    }

    /**
     * Method to initialize seperators
     * Seperators are used to seperate terms 
     * Additionally, the parenthesis are used to group terms and operations
     *
     * Note, that through overloaded methods, we can store seperators as Terms with different numbers of arguments 
     */
    private void initSeperators() {
        // Seperators contain a token 
        seperators.put(' ');
        seperators.put('(');
        seperators.put(')');
    }

    /**
     * Term Tokenizer takes original expression and converts it to ArrayList of mathematical terms and values
     * Populates the this.terms instance of type ArrayList<TermOrOperator>
     * In essence, this method tokenizes the expression into individual terms/cells in the ArrayList 
     */ 
    private void termTokenizer() {
        int start = 0;  // term split starting index
        StringBuilder multiCharTerm = new StringBuilder();    // term holder
        for (int i = 0; i < this.expression.length(); i++) {
            Character c = this.expression.charAt(i);
            
            if ( operators.contains(c) || seperators.contains(c)  ) {
                // 1st check for working term and add if it exists
                if (multiCharTerm.length() > 0) {
                    this.terms.add(new TermOrOperator(this.expression.substring(start, i)));
                }
                // Add operator or parenthesis term to list
                TermOrOperator t = operators.get(c);
                if (t == null) {
                    t = seperators.get(c);
                }
                if (t != null && t.getToken() != ' ') {
                    this.terms.add(t);
                }

                // Get ready for next term
                start = i + 1;
                multiCharTerm = new StringBuilder();
            } else {
                // multi character terms: numbers, functions, perhaps non-supported elements
                // Add next character to working term
                multiCharTerm.append(c);
            }

        }
        // Add last term
        if (multiCharTerm.length() > 0) {
            this.terms.add(new TermOrOperator(this.expression.substring(start)));
        }
    }

    /**
     * This method populates the this.rpnTerms instance of type ArrayList<TermOrOperator> from the this.terms
     * Observe the inorder shift from before (terms) to after (termsToRPN) reorder
     * This reordering is called Reverse Polish Notation (RPN)
     * The terms are reordered by parenthesis and operator precedence, also called postfix notation
     * RPN is commonly used in computer science to evaluate mathematical expressions
     * RPN originated with with the Polish mathematician Jan Łukasiewicz
     * RPN was later popularized by the Hewlett-Packard company in the 1970s with their scientific calculators
     * 
     */ 
    private void termsToRPN () {
        // A stack is used to push and pop calculation for grouping and precedence
        Stack<TermOrOperator> operatorStack = new Stack<>();

        // Process each term
        for (TermOrOperator term : terms) {
            // term is a marker for grouping
            if (term.getToken() == '(') { // open parenthesis
                operatorStack.push(term);
            // term is a marker to empty group of terms to matching parenthesis
            } else if (term.getToken() == ')') { // close parenthesis
                while (operatorStack.peek() != null && operatorStack.peek().getToken() != '(') {
                    rpnTerms.add(operatorStack.pop());
                }
                operatorStack.pop(); // remove open parenthesis
            // term is an operator, shuffle terms between Operator stack and RPN array list to maintain precedence
            } else if (operators.contains(term.getToken())) {
                while (!operatorStack.isEmpty() && operators.contains(operatorStack.peek().getToken()) && term.isPrecedent(operatorStack.peek())) {
                    rpnTerms.add(operatorStack.pop());
                }
                operatorStack.push(term);
            // term is a value, add it directly to RPN array list
            } else {
                this.rpnTerms.add(term);
            }
        }
        // Empty the operator stack to RPN array list
        while (!operatorStack.isEmpty()) {
            rpnTerms.add(operatorStack.pop());
        }
    }

    /**
     * The method takes this.rpnTerms and calculates them into a final result
     * Values proceed the operators, value(s) are popped from the this.rpmTerms and pushed onto the calcStack
     * Operators are applied to the value(s) in the calcStack and the result is pushed back onto the calcStack 
     * The final result is the remaining value on the calcStack with the this.rpnTerms is empty 
     * The final result is stored in this.result 
     * 
     */ 
    private void rpnToResult()
    {
        // stack is used to hold operands and each calculation
        Stack<Double> calcStack = new Stack<Double>();

        // RPN is processed, ultimately calcStack has final result
        for (TermOrOperator term : this.rpnTerms)
        {
            Double operand1 = 0.0, operand2 = 0.0, result = 0.0;

            // If the token is an operator, calculate
            if (operators.contains(term.getToken()))
            {
                if (term.getNumArgs() == 1) {
                    operand1 = calcStack.pop();
                } else {
                    // Pop the two top entries
                    operand2 = calcStack.pop();
                    operand1 = calcStack.pop();
                }
                // Calculate result and push back onto the stack
                result = term.calculate(operand1, operand2);
                calcStack.push( result );
            }
            // else the token is a number push it onto the stack
            else
            {
                calcStack.push(Double.valueOf(term.getValue()));
            }
        }
        // Pop final result and set as final result for expression
        this.result = calcStack.pop();
    }

    // Print the expression, terms, and result from the instance variables
    public String toString() {
        return ("Original expression: " + this.expression + "\n" +
                "Tokenized expression: " + this.terms.toString() + "\n" +
                "Reverse Polish Notation: " +this.rpnTerms.toString() + "\n" +
                "Final result: " + String.format("%.2f", this.result));
    }

    // Tester method contains a few examples of mathematical expressions
    public static void main(String[] args) {
        Calculator simpleMath = new Calculator("100 + 200  * 3");
        System.out.println("Simple Math\n" + simpleMath);

        System.out.println();

        Calculator parenthesisMath = new Calculator("(100 + 200)  * 3");
        System.out.println("Parenthesis Math\n" + parenthesisMath);

        System.out.println();

        Calculator decimalMath = new Calculator("100.2 - 99.3");
        System.out.println("Decimal Math\n" + decimalMath);

        System.out.println();

        Calculator moduloMath = new Calculator("300 % 200");
        System.out.println("Modulo Math\n" + moduloMath);

        System.out.println();

        Calculator divisionMath = new Calculator("300/200");
        System.out.println("Division Math\n" + divisionMath);

        System.out.println();

        Calculator pythagoreanMath = new Calculator("√(3^2 + 4^2)");
        System.out.println("Pythagorean Theorem\n" + pythagoreanMath);

    }
}
Calculator.main(null);
```

    Simple Math
    Original expression: 100 + 200  * 3
    Tokenized expression: [100, +, 200, *, 3]
    Reverse Polish Notation: [100, 200, 3, *, +]
    Final result: 700.00
    
    Parenthesis Math
    Original expression: (100 + 200)  * 3
    Tokenized expression: [(, 100, +, 200, ), *, 3]
    Reverse Polish Notation: [100, 200, +, 3, *]
    Final result: 900.00
    
    Decimal Math
    Original expression: 100.2 - 99.3
    Tokenized expression: [100.2, -, 99.3]
    Reverse Polish Notation: [100.2, 99.3, -]
    Final result: 0.90
    
    Modulo Math
    Original expression: 300 % 200
    Tokenized expression: [300, %, 200]
    Reverse Polish Notation: [300, 200, %]
    Final result: 100.00
    
    Division Math
    Original expression: 300/200
    Tokenized expression: [300, /, 200]
    Reverse Polish Notation: [300, 200, /]
    Final result: 1.50
    
    Pythagorean Theorem
    Original expression: √(3^2 + 4^2)
    Tokenized expression: [√, (, 3, ^, 2, +, 4, ^, 2, )]
    Reverse Polish Notation: [3, 2, ^, 4, 2, ^, +, √]
    Final result: 5.00


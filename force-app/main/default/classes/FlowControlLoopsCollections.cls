/**
* This is the FlowControlLoopsCollections class, part of the Developer Kickstart Module 2 curriculum
* at Cloud Code Academy. This class focuses on flow control, loops, and collections in Apex programming.
* The class provides a comprehensive understanding of various flow control structures, including if statements,
* jump statements, and loops like for loops. It also covers working with collections such as lists and maps.
*
* Topics covered in this class include:
* - Understanding and using if statements to make conditional decisions in code execution.
* - Using jump statements like break and continue to control the flow of execution in loops and switch statements.
* - Working with for loops to iterate over a set of elements in Apex.
* - Understanding collections and using lists and maps to store and manipulate data.
*
* This class is designed for developers who have a basic understanding of Apex and want to deepen their knowledge
* in flow control, loops, and collections. By mastering these concepts, developers will be able to write more
* efficient and effective code in their Salesforce projects.
*
* @author Naveen Tariq -
*/

public with sharing class FlowControlLoopsCollections {
    
    /**
     * Question 1
     * Compares two numbers and return "Hello World!" if x is greater than the y.
     * If either of the numbers is null or x is less than y, return null.
     * Example: helloWorld(40, 10) should return "Hello World!"
     * @param x The first number.
     * @param y The second number.
     * @return "Hello World!" if x greater than y, otherwise return null.
     */
    public static String helloWorld(Integer x, Integer y) {
        String result;                           // Declare a variable to store the result
        if (x == null || y == null || x <= y ){  // Check if either x or y are null and x is less than y
            result = null; 
            System.debug('Numbers are null or x is less than y'); 
        }else {
        result = 'Hello World!'; 
        }
        return result; // Replace null with the variable you used to store the result
    }

    /**
     * Question 2
     * Checks if a person is eligible to vote based on their age.
     * A person is eligible to vote if they are 18 years old or older.
     * If the age is less than 18, the method will return false.
     * Example: votingEligibility(18) should return true
     * @param age The age of the person.
     * @return true if the person is eligible to vote, false otherwise.
     */
    public static Boolean votingEligibility(Integer age) {
        Boolean isEligible;   //Declare a variable to store the result
        if (age >= 18) {      //Check if its equal or greather than 18
            isEligible = true;
            System.debug('You are eligible to vote');
        } else {
            isEligible = false;
            System.debug('You are not eligible to vote ');
        }
        return isEligible; // Replace null with the variable you used to store the result
    }

    /**
     * Question 3
     * Finds the maximum of two numbers.
     * If both numbers are equal, it returns that number.
     * Example: findMax(58, 200) should return 200
     * @param num1 The first number.
     * @param num2 The second number.
     * @return The maximum of the two numbers, or null if either number is null.
     */
    public static Integer findMax(Integer num1, Integer num2) {
        // Initialize largestNum as null
        Integer largestNum = null;
        if (num1 == null || num2 == null){          //Check if any number is null
            largestNum = null; 
            System.debug('Numbers are null');
        }else if (num1 >= num2){                      //Check if num1 is greater than num2
            largestNum = num1;
            System.debug('The largest number is ' + num1);
        }else if (num2 >= num1){                      //Check if num2 is greater than num1
            largestNum = num2;     
            System.debug('The largest number is ' + num2);
        }
        return largestNum; // Replace null with the variable you used to store the result
    }


    /**
     * Question 4
     * Checks if a number is positive, negative, or zero.
     * If the number is null, return null.
     * Example: checkNumber(5) should return "Positive"
     * @param a The number to check.
     * @return A string indicating whether the number is "Positive", "Negative", or "Zero", or null if the number is null.
     */
    public static String checkNumber(Integer a) {
        String result; 
        if (a== null){  // Check if null
            result = null;
            System.debug('The number is null'); 
        } else if (a > 0 ){ //Check if positive 
            result = 'Positive';
            System.debug('The number is positive');
        } else if ( a < 0){
            result = 'Negative'; //Check if negative
            System.debug('The number is negative');
        }else if (a == 0 ){ //Check if Zero
            result = 'Zero';
            System.debug('The number is zero');
        }
        return result; // Replace null with the variable you used to store the result
    }

    /**
     * Question 5
     * Checks if a number is even or odd.
     * If the number is null, return null.
     * Example: checkEvenOdd(2) should return "Even"
     * @param a The number to check.
     * @return A string indicating whether the number is "Even" or "Odd", or null if the number is null.
     */
    public static String checkEvenOdd(Integer a) {
        String result; 
        //Integer a = 40; //This is to testmy code       
        if ( a == null){ // Check if null
            result = null;
            System.debug('The number is null');
        //} else if (a / 2 == 0){. // this approach doesnt work 
       // }else if (a % 2 == 0){ //and % throws syntax error
        }else{
            Integer remainder = Math.mod(a, 2); //This was throwing error before null so placed it here
            if (remainder == 0){
            result= 'Even';
            System.debug ('The number is even');
            } else{
            result = 'Odd';
            System.debug('The number is odd');
        }
    }
        return result; // Replace null with the variable you used to store the result
    }

    /**
     * Question 6
     * Checks if a string is empty, null, or contains text.
     * Example: checkString("") should return "Empty"
     * @param a The string to check.
     * @return A string indicating whether the input is "Empty", "Null", or "Contains Text".
     */
    public static String checkString(String a) {
        String result;
        if( a == null){
            result = 'Null';
            System.debug('String is null');
        } else if ( a == ''){
            result = 'Empty';
            System.debug('String is empty');
        } else {
            result = 'Contains Text';
            System.debug('String Contains Text');
        }
        return result; // Replace null with the variable you used to store the result
    }

    /**
     * Question 7
     * Determines the grade based on the score.
     * Grade A if score is greater than or equal to 90.
     * Grade B if score is greater than or equal to 80.
     * Grade C if score is greater than or equal to 70.
     * Grade D if score is greater than or equal to 60.
     * Grade F otherwise.
     * Example: determineGrade(85) should return "B"
     * @param score The score.
     * @return The grade for the given score.
     */
    public static String determineGrade(Integer score) {
        String result;
        if (score == null){
            result = 'Null';
            System.debug('Score is null');
        } else if (score >= 90){
            result = 'A';
            System.debug('Grade A');
        } else if ( score >= 80){
            result = 'B';
            System.debug('Grade B');
        } else if (score >= 70){
            result = 'C';
            System.debug('Grade C');
        } else if (score >= 60){
            result = 'D';
            System.debug('Grade D');
        } else{
            result = 'F';
            System.debug('Grade F');
        }
        return result; // Replace null with the variable you used to store the result
    }


    /**
     * Question 8
     * Sum all the integers up to a given limit.
     * Example: sumUpToLimit(5) should return 15
     * @param intLimit The number up to which integers will be summed.
     * @return The sum of all integers up to the limit.
     */
    public static Integer sumUpToLimit(Integer intLimit) {
         Integer sum = 0; //Leaving null doesnt work so declared a vlaue
         //Integer intLimit = 5; // it is to test my code
         for (Integer i = 0; i <= intLimit; i++ ){ // i<intLimit doenst work as it stops before the inLimit number
            sum = sum + i; //adding the value of i with sum to sum all the intergers up
            //sum += i;   //or this does the same thing
            //System.debug(sum); //Inside the for loop it prints the result at each iteration
         }
        System.debug(sum); //This prints the final value
        return sum; // Replace null with the variable you used to store the result
    }

    /**
     * Question 9
     * Generate String "Hello World!" three times, with each occurrence separated by a semicolon.
     * Example: returnHelloWorld() should return "Hello World!; Hello World!; Hello World!; "
     * @return The string "Hello World!; Hello World!; Hello World!; "
     */
    public static String returnHelloWorld() {
        // Initialize the result String
        String result = 'Hello World!; '; // leaving it null prints null before Hello World
        // Use a for loop to append 'Hello World!;' to the result string three times
        for (Integer i = 1; i < 3; i++){ //initialising at 0 prints it 4 times
             //result = result + i; ';    // Adding i here prints number with Hello World
            //result = result + 'Hello World!;   '; // This doesnt print with right spaces b/w each print e.g. Hello World!;Hello World!; Hello World!;
            result += 'Hello World!; '; // this prints with right spaces in b/w and on one line
        }
        System.debug(result); 
        return result; // Replace null with the variable you used to store the result
    }

    /**
     * Question 10
     * Generate a string where the input string is repeated the given number of times, with each
	 * repetition separated by a semicolon. 
     * Do not add a semicolon after the last repetition.
	 * Example: repeatString("Hello World!", 3) should return "Hello World!; Hello World!; Hello World!"
     * @param inputString The string to be repeated.
     * @param repeatCount The number of times the string should be repeated.
     * @return The new string with the inputString repeated repeatCount times.
     */
    public static String repeatString(String inputString, Integer repeatCount) {
        // Initialize the result String
        //String result; // leaving it null prints null before Hello World
        String result = ''; 
        //Integer repeatCount = 3; // Its to check my code
        //String inputString = 'Hello World!';// Its to check my code

        // Use a for loop to append the inputString to the result string repeatCount times
        
        for (Integer i = 0; i < repeatCount; i++ ) {
            result += inputString;
            //system.debug(result); 
            // If it is not the last iteration, add a semicolon to separate the strings
            if(i < repeatCount - 1){ // -1 is to make sure it only print the semi colon until second last iteration
                //result = result + ';';
                result += '; '; //adding semi colon and space
            }
        }
        system.debug(result);
        // Return the final result string
        return result; // Replace null with the variable you used to store the result
    }

    /**
     * Question 11
     * Creates a List of integers and adds the integers 1, 2, and 3 to it.
     * Example: createAndPopulateList() should return [1, 2, 3]
     * @return A List of integers containing the numbers 1, 2, and 3.
     */
    public static List<Integer> createAndPopulateList() {
        // Create a new list of integers
        List<Integer> numberList = new List<Integer>();

        // Add the integers 1, 2, and 3 to the list
        numberList.add(1);// add 1
        numberList.add(2);// add 2
        numberList.add(3);// add 3
        system.debug(numberList);

        // Return the populated list
        return numberList; // Replace null with the variable you used to store the result
    } 

    /**
     * Question 12
     * Creates a List of integers and adds the integers from 1 to 5. Then it removes the number 3 from the list.
     * Example: createAndRemoveFromList() should return [1, 2, 4, 5]
     * @return A List of integers from 1 to 5, excluding the number 3.
     */
    public static List<Integer> createAndRemoveFromList() {
        // Create a new list of integers and add numbers 1 to 5
        List<Integer> numberList = new List<Integer>{1, 2, 3, 4, 5}; //DO NOT CHANGE

        // Remove the 3rd element (number 3) from the list
        numberList.remove(2); //2 is the index of the number 3 in the list
        system.debug(numberList);
        
        // Return the updated list
        return numberList; // Replace null with the variable you used to store the result
    }

    /**
     * Question 13
     * Create a list filled with integers based on the input parameter.
     * Example: createIntegerList(5) should return [1, 2, 3, 4, 5] 
     * @param n The last integer in the List.
     * @return A List of integers from 1 to 'n'.
     */
    public static List<Integer> createIntegerList(Integer n) {
        // Create a new list of integers
        //Integer n = 5; //Its to check my code
        List<Integer> numberList = new List<Integer>();
        
        for(Integer i = 1; i <= n; i++) {
            //add integer to the list
            numberList.add(i);
            //System.debug(numberList);
        }
        System.debug(numberList);

        return numberList; // Replace null with the variable you used to store the result
    }

    /**
     * Question 14
     * Remove duplicate values from the list of Strings.
     * The returned Set contains the unique strings from the input List.
     * Example: createStringSet(['a', 'b', 'a', 'c']) should return ['a', 'b', 'c']
     * @param inputList The List of strings.
     * @return A Set of unique strings.
     */
    public static Set<String> createStringSet(List<String> inputList) {
        // Create a new Set of strings
        Set<String> stringSet = new Set<String>();

        /*  This is to test my code
        stringSet.add('a');
        stringSet.add('a');
        System.debug(stringSet);
        // The above approach didnt work as I was adding to the set but not to the list

        //Then Created a list to test my code
        //List<String> inputList = new List<String>{'a', 'b', 'a', 'c'};*/

        //add strings to the set

        // I dont understand why we need to loop through our set?

        for (String s : inputList){ //(Integer i : stringSet) //Integer doesnt work as this a set of strings
            stringSet.add(s);
            //System.debug(stringSet);
        }
        System.debug(stringSet); 

        return stringSet; // Replace null with the variable you used to store the result
    }

    /**
     * Question 15
     * Iterates over a list of integers and sums only the positive integers.
     * Example: sumPositiveIntegers() should return 12
     * @return The sum of positive integers from the list.
     */
    public static Integer sumPositiveIntegers() {
        List<Integer> numbers = new List<Integer>{-1, 2, -3, 4, -5, 6}; //DO NOT CHANGE

        // Loop through the list of integers
        Integer sum = 0; // Declared a varaible so it can store positive integers
        for( Integer i : numbers){
            if (i  > 0 ){ // Check if the integers are positive
            //sum =+i;// it doesnt sum the positive integers
             sum = sum + i;
            }
        }
        System.debug('The sum is postivie integr = ' + sum);

        // if the number is negative skip this iteration
        //Negative numbers are automatically skipped so dint use else

        return sum; // Replace null with the variable you used to store the result
    }

    /**
     * Question 16
     * Iterates over a list of strings and searches for a specific word. Once found, it breaks the loop.
     *  Example: findWordInList("World", ['Hello', 'World', 'Goodbye']) should return 1
     * @param wordToFind The word to find in the list.
     * @param words The list of words to search.
     * @return The position of the word in the list as a string or -1 if the word was not found.
     */
    public static Integer findWordInList(String wordToFind, List<String> words) {
        //This is to test my code
        /*List<String> words = new List<String>{'Hello', 'World', 'Goodbye', 'Hi'};
        String wordToFind = 'World';*/
        
        // The variable to store the index of the word
        Integer index = -1; // NEED HELP - to understand why- Test was failing as the list had a word that wasn not on the list so tried -1 
       
        // Loop through the list of words
        /*The following first loop doesnt work as it gives the element itself, not its position. 
        
        for (String s : words){
            if (s == wordToFind){
                index = s; // Plus this doesnt work as index is integer and list is string
            }
        }*/

        // Loop through the list of words
        //To get the index, need a traditional for loop so it can find the index. 
        for (Integer i = 0; i < words.size(); i ++){
            if( words[i] == wordToFind){ //words == wordTofind doesnt find index
                index = i; 
                // If the current word is the word to find, exit the loop
                break; //exiting the loop by break 
            }
        }
        System.debug('The word is found at index = ' + index);
        return index; // Replace null with the variable you used to store the result
    }

    /**
     * Question 17
     * Loop through the list of money and adds them up until it accumulates more than 40 and then stops counting.
     * The change values are in cents and the total is to be calculated in dollars.
     * Example: countMoney() should return 48.02
     * @return The total value in dollars, stopped at the point when it exceeds 40 dollars.
     */
    public static Decimal countMoney() {
        // The list of money in the wallet, represented in dollars and cents
        List<Decimal> moneyInWallet = new List<Decimal>{0.50, 10, 3.84, 24.60, 9.08, 50, 4.90}; //DO NOT CHANGE
        Decimal result = 0; // Declare a variable to store the result
        for (Decimal d : moneyInWallet){
            result += d;
            if (result > 40){
             System.debug('The result is '  + result);
             Break; //stopped at the point when it exceeds 40 dollars.
            }
        }

        return result; // Replace null with the variable you used to store the result
    }

    /**
     * Question 18
     * Create a map that has five key-value pairs to the map, where the keys are the names of fruits and the values are their quantities.
     * Example: addItemsToMap() should return "Apples => 5, Oranges => 10, Bananas => 15, Pears => 20, Grapes => 25"
     * @return The Map of fruits and their quantities.
     */
    public static Map<String, Integer> addItemsToMap() {
        // Initialize an empty Map
        Map<String, Integer> fruitMap = new Map <String, Integer>();
        // Add key-value pairs to the Map
        // add Apples => 5
        // add Oranges => 10
        // add Bananas => 15
        // add Pears => 20
        // add Grapes => 25
        fruitMap.put('Apples', 5);
        fruitMap.put('Oranges', 10);
        fruitMap.put('Bananas', 15);
        fruitMap.put('Pears', 20);
        fruitMap.put('Grapes', 25);

        System.debug(fruitMap);

        return fruitMap; // Replace null with the variable you used to store the result
    }

    /**
     * Question 19
     * Create a map where the keys are the names of employees and the values are their salaries.
     * Then returns the salary of the employee whose name is specified.
     * Example: getSalary("John Doe") should return 50000
     * Resource: https://developer.salesforce.com/docs/atlas.en-us.apexref.meta/apexref/apex_methods_system_map.htm#apex_System_Map_get
     * @param employeeName The name of the employee.
     * @return The salary of the employee, or null if the employee is not found in the Map.
     */
    public static Integer getSalary(String employeeName) {
        // Initialize a Map
        Map<String, Integer> employeeSalary = new Map<String, Integer>();

        // Add key-value pairs to the Map
        // add John Doe => 50000
        // add Jane Smith => 60000
        // add Sam Brown => 55000
        // add Alice Johnson => 65000
        employeeSalary.put('John Doe', 50000);
        employeeSalary.put('Jane Smith', 60000);
        employeeSalary.put('Sam Brown', 55000);
        employeeSalary.put('Alice Johnson', 65000);
        
        // Get the salary of the employee
        //Integer salary = employeeSalary.get('Sam Brown'); to test my code
        Integer salary = employeeSalary.get(employeeName); //get(key) Returns the value to which the specified key is mapped, or null if the map contains no value for this key.
        System.debug(salary);

        // Return the salary of the employee, or null if the employee is not found in the Map
        return salary; // Replace null with the variable you used to store the result
    }

    /**
     * Question 20
     * Create a map where the keys are the names of employees and the values are their salaries.
     * Then, iterates over the map and checks if an employee's salary is more than 55000.
     * If it is, add the employee's name to a list of employees that is returned by the method.
     * Remember that a Map is a collection of key-value pairs. Key are a set of unique values, so you can't have duplicate keys. Values are a list of values, so you can have duplicate values.
     * Resource: https://developer.salesforce.com/docs/atlas.en-us.apexcode.meta/apexcode/langCon_apex_loops_for_lists.htm
     * Example: getHighPaidEmployees() should return ['Jane Smith', 'Alice Johnson']
     * @return A list of employee names who have a salary more than 55000.
     */
    public static List<String> getHighPaidEmployees() {
        // Initialize a Map
        Map<String, Integer> employeeSalaries = new Map<String, Integer>();

        // Add key-value pairs to the Map
        // add John Doe => 50000
        // add Jane Smith => 60000
        // add Sam Brown => 55000
        // add Alice Johnson => 65000

        employeeSalaries.put('John Doe', 50000);
        employeeSalaries.put('Jane Smith', 60000);
        employeeSalaries.put('Sam Brown', 55000);
        employeeSalaries.put('Alice Johnson', 65000);
        
        // Initialize a list to store the names of high paid employees
        List<String> highPaidEmployees = new List<String>();

        // Iterate over the Map using a for loop
        for (String employeeName : employeeSalaries.keySet()){
            // Check if the salary of the employee is more than 55000
            Integer salary = employeeSalaries.get(employeeName);
            if (salary > 55000 ){// Comparison arguments must be compatible types: String, Integer. So I need to use get(key) to get the value of the key
                // Add the employee to the list of high paid employees
                highPaidEmployees.add(employeeName);
                //System.debug(salary);// This print 60000, Jane Smith twice then 65000 but not Alice Johnson. Not sure Why?
                //System.debug(highPaidEmployees);// This  also  prints Jane Smith twice but not Alice Johnson.Not sure Why?
            }
            System.debug(highPaidEmployees);

        }     

        // Return the list of high paid employees
        return highPaidEmployees; // Replace null with the variable you used to store the result
    }

}
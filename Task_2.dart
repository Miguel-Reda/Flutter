import 'dart:io';

//  Check two numbers where one < 100 and other > 200
bool checkNumberRange(int num1, int num2) {
  return (num1 < 100 && num2 > 200);
}

//  Check if an integer is in range -10 to 10
bool checkRange(int num1, int num2) {
  return (num1 >= -10 && num1 <= 10) || (num2 >= -10 && num2 <= 10);
}

//  Check number >= 4 and print greeting using shorthand if
void checkGreeting(int number) {
  number >= 4 ? print("GOOD MORNING") : print("GOOD NIGHT");
}

//  Check if number is even or odd
String checkEvenOdd(int number) {
  return number % 2 == 0 ? "even" : "odd";
}

//  Display sum of n natural numbers
void displayNaturalNumbers(int n) {
  print("The first $n natural number is :");
  for (int i = 1; i <= n; i++) {
    stdout.write("$i ");
  }
  print("\nThe Sum of Natural Number upto $n terms : ${(n * (n + 1)) ~/ 2}");
}

// Read 10 numbers and find average and sum
void calculateAverageAndSum() {
  List<int> numbers = [];
  int sum = 0;
  
  print("Input the 10 numbers :");
  for (int i = 1; i <= 10; i++) {
    stdout.write("Number-$i :");
    int num = int.parse(stdin.readLineSync()!);
    numbers.add(num);
    sum += num;
  }
  
  double average = sum / 10;
  print("The sum of 10 no is : $sum");
  print("The Average is : ${average.toStringAsFixed(6)}");
}

//  Display n terms of odd natural numbers and their sum
void displayOddNumbers(int n) {
  print("The odd numbers are :");
  int sum = 0;
  for (int i = 1; i <= n * 2; i += 2) {
    stdout.write("$i ");
    sum += i;
  }
  print("\nThe Sum of odd Natural Number upto $n terms : $sum");
}

//  Display n terms of even natural numbers and their sum
void displayEvenNumbers(int n) {
  print("The even numbers are :");
  int sum = 0;
  for (int i = 2; i <= n * 2; i += 2) {
    stdout.write("$i ");
    sum += i;
  }
  print("\nThe Sum of even Natural Number upto $n terms : $sum");
}

//  Check if number is prime
bool isPrime(int number) {
  if (number <= 1) return false;
  if (number == 2) return true;
  if (number % 2 == 0) return false;
  
  for (int i = 3; i * i <= number; i += 2) {
    if (number % i == 0) return false;
  }
  return true;
}

// : Display Fibonacci series
void displayFibonacci(int n) {
  print("Here is the Fibonacci series upto to $n terms :");
  int a = 0, b = 1;
  stdout.write("$a $b ");
  
  for (int i = 3; i <= n; i++) {
    int c = a + b;
    stdout.write("$c ");
    a = b;
    b = c;
  }
  
}

// : Reverse a number
int reverseNumber(int number) {
  int reversed = 0;
  while (number > 0) {
    reversed = reversed * 10 + number % 10;
    number ~/= 10;
  }
  return reversed;
}

// Main function to test all implementations
void main() {
  print("===  CHECK NUMBER RANGE ===");
  print("Input a first number(<100): 75");
  print("Input a second number(>200): 250");
  print(checkNumberRange(75, 250));
  
  
  print("===  CHECK RANGE -10 TO 10 ===");
  print("Input a first number: -5");
  print("Input a second number: 8");
  print(checkRange(-5, 8));
  
  
  print("===  GREETING CHECK ===");
  print("Testing with number 6:");
  checkGreeting(6);
  print("Testing with number 2:");
  checkGreeting(2);
  
  
  print("===  EVEN/ODD CHECK ===");
  int testNumber = 7;
  print("$testNumber is ${checkEvenOdd(testNumber)}");
  
  
  print("===  NATURAL NUMBERS ===");
  displayNaturalNumbers(7);
  
  
  print("===  AVERAGE AND SUM ===");
  print("Note: This would normally take user input");
  print("For demonstration, using sample data:");
  List<int> sampleNumbers = [2, 3, 4, 5, 6, 7, 8, 9, 10, 11];
  int sum = sampleNumbers.reduce((a, b) => a + b);
  double average = sum / 10;
  print("The sum of 10 no is : $sum");
  print("The Average is : ${average.toStringAsFixed(6)}");
  
  
  print("===  ODD NUMBERS ===");
  displayOddNumbers(10);
  
  
  print("===  EVEN NUMBERS ===");
  displayEvenNumbers(5);
  
  
  print("===  PRIME CHECK ===");
  int primeTest = 13;
  if (isPrime(primeTest)) {
    print("$primeTest is a prime number");
  } else {
    print("$primeTest is not a prime number");
  }
  
  
  print("===  FIBONACCI SERIES ===");
  displayFibonacci(10);
  
  
  print("===  REVERSE NUMBER ===");
  int numberToReverse = 123;
  int reversed = reverseNumber(numberToReverse);
  print("The reverse of $numberToReverse is $reversed");
  
  
  // Interactive user input section
  print("=== INTERACTIVE USER INPUT SECTION ===");
  print("Enter a number to check if it's >= 4:");
  int userNumber = int.parse(stdin.readLineSync()!);
  checkGreeting(userNumber);
  
  print("\nEnter a number to check if it's even or odd:");
  int userNumber2 = int.parse(stdin.readLineSync()!);
  print("$userNumber2 is ${checkEvenOdd(userNumber2)}");
  
  print("\nEnter a number to check if it's prime:");
  int userNumber3 = int.parse(stdin.readLineSync()!);
  if (isPrime(userNumber3)) {
    print("$userNumber3 is a prime number");
  } else {
    print("$userNumber3 is not a prime number");
  }
  
  print("\nEnter a number to reverse:");
  int userNumber4 = int.parse(stdin.readLineSync()!);
  int userReversed = reverseNumber(userNumber4);
  print("The reverse of $userNumber4 is $userReversed");
}

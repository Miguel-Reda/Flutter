import 'dart:io';



// Check even or odd
String checkEvenOdd(int number) {
  return number % 2 == 0 ? "even" : "odd";
}

// Display name and age
void displayUserInfo(String name, int age) {
  print("Name: $name");
  print("Age: $age");
}

// Sum from 1 to n
int sumFromOneToN(int n) {
  int sum = (n * (n + 1)) ~/ 2;
  return sum;
}

// Check prime number
bool isPrime(int number) {
  if (number <= 1) return false;
  if (number == 2) return true;
  if (number % 2 == 0) return false;
  
  // Check up to square root of the number
  int sqrtNumber = (number ~/ 2).toInt();
  for (int i = 3; i <= sqrtNumber; i += 2) {
    if (number % i == 0) return false;
  }
  return true;
}

// Sum of digits
int sumOfDigits(int number) {
  int sum = 0;
  while (number > 0) {
    sum += number % 10;
    number ~/= 10;
  }
  return sum;
}

// Factorial using recursion
int factorial(int n) {
  if (n <= 1) return 1;
  return n * factorial(n - 1);
}

//  Fibonacci using recursion
int fibonacci(int n) {
  if (n <= 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

// 1. BankAccount Class
class BankAccount {
  String accountID;
  double balance;
  
  // First constructor with balance
  BankAccount.withBalance(this.accountID, this.balance);
  
  // Second constructor (no-argument) with balance 0
  BankAccount(this.accountID) : balance = 0.0;
  
  // Withdraw method
  bool withdraw(double amount) {
    if (balance >= amount) {
      balance -= amount;
      return true;
    }
    return false;
  }
  
  // Deposit method
  void deposit(double amount) {
    balance += amount;
  }
  
  // Display account info
  void displayInfo() {
    print("Account ID: $accountID");
    print("Balance: \$${balance.toStringAsFixed(2)}");
  }
}

// 2. Holiday Class
class Holiday {
  String name;
  int day;
  String month;
  
  // Constructor
  Holiday(this.name, this.day, this.month);
  
  // Check if two holidays are in the same month
  static bool inSameMonth(Holiday h1, Holiday h2) {
    return h1.month.toLowerCase() == h2.month.toLowerCase();
  }
  
  // Calculate average day of holidays
  static double avgDate(List<Holiday> holidays) {
    if (holidays.isEmpty) return 0.0;
    
    int totalDays = 0;
    for (Holiday holiday in holidays) {
      totalDays += holiday.day;
    }
    return totalDays / holidays.length;
  }
  
  // Display holiday info
  void displayInfo() {
    print("$name - $month $day");
  }
}

// 3. Movie Class
class Movie {
  String title;
  String studio;
  String rating;
  
  // Constructor with optional rating parameter
  Movie(this.title, this.studio, [this.rating = "PG"]);
  
  // Get movies with PG rating
  static List<Movie> getPG(List<Movie> movies) {
    return movies.where((movie) => movie.rating.contains("PG")).toList();
  }
  
  // Display movie info
  void displayInfo() {
    print("Title: $title");
    print("Studio: $studio");
    print("Rating: $rating");
  }
}

void main() {
  print("=== CHECK EVEN OR ODD ===");
  int testNumber = 7;
  print("$testNumber is ${checkEvenOdd(testNumber)}");

  print("=== DISPLAY NAME AND AGE ===");
  displayUserInfo("John Doe", 25);

  print("=== SUM FROM 1 TO N ===");
  int n = 5;
  int sumToN = sumFromOneToN(n);
  print("Sum from 1 to $n is: $sumToN");

  print("=== CHECK PRIME NUMBER ===");
  int primeTest = 31;
  if (isPrime(primeTest)) {
    print("$primeTest is a prime number");
  } else {
    print("$primeTest is not a prime number");
  }

  print("=== SUM OF DIGITS ===");
  int digitNumber = 1234;
  int digitSum = sumOfDigits(digitNumber);
  print("The sum of the digits of the number $digitNumber is : $digitSum");

  print("=== FACTORIAL ===");
  int factNumber = 5;
  int factResult = factorial(factNumber);
  print("The factorial of $factNumber! is $factResult");

  print("=== FIBONACCI ===");
  int fibNumber = 10;
  int fibResult = fibonacci(fibNumber);
  print("The Fibonacci of ${fibNumber}th term is $fibResult");

  print("=== TESTING BANKACCOUNT CLASS ===");
  BankAccount account1 = BankAccount.withBalance("ACC001", 1000.0);
  BankAccount account2 = BankAccount("ACC002");
  
  print("Account 1:");
  account1.displayInfo();

  print("Account 2:");
  account2.displayInfo();

  account1.withdraw(200.0);
  account2.deposit(500.0);
  
  print("After transactions:");
  print("Account 1:");
  account1.displayInfo();
  print("Account 2:");
  account2.displayInfo();

  print("=== TESTING HOLIDAY CLASS ===");
  Holiday independenceDay = Holiday("Independence Day", 4, "July");
  Holiday christmas = Holiday("Christmas", 25, "December");
  Holiday newYear = Holiday("New Year", 1, "January");
  
  print("Holidays:");
  independenceDay.displayInfo();
  christmas.displayInfo();
  newYear.displayInfo();

  print("Independence Day and Christmas in same month: ${Holiday.inSameMonth(independenceDay, christmas)}");
  print("Independence Day and New Year in same month: ${Holiday.inSameMonth(independenceDay, newYear)}");
  
  List<Holiday> holidays = [independenceDay, christmas, newYear];
  double avgDay = Holiday.avgDate(holidays);
  print("Average day of holidays: ${avgDay.toStringAsFixed(1)}");

  print("=== TESTING MOVIE CLASS ===");
  Movie casinoRoyale = Movie("Casino Royale", "Eon Productions", "PG13");
  Movie toyStory = Movie("Toy Story", "Pixar");
  Movie avengers = Movie("The Avengers", "Marvel Studios", "PG13");
  
  print("Movies:");
  casinoRoyale.displayInfo();
    toyStory.displayInfo();
    avengers.displayInfo();

  List<Movie> allMovies = [casinoRoyale, toyStory, avengers];
  List<Movie> pgMovies = Movie.getPG(allMovies);
  
  print("PG Rated Movies:");
  for (Movie movie in pgMovies) {
    movie.displayInfo();
      }
}

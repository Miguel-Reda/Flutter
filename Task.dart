import 'dart:io';

void main() {
  print(" choose an option:");
  //Arithmetic Operations with Three Numbers
  print("1. Arithmetic operations on three numbers");
  //Convert Celsius to Fahrenheit
  print("2. Convert Celsius to Fahrenheit");
  //Convert Celsius to Kelvin and Fahrenheit
  print("3. Convert Celsius to Kelvin and Fahrenheit");
  //Add Int Data Type Size to a Number
  print("4. Add Int Data Type Size to a Number");
  // Create a String with First Character at Front and Back
  print("5. Create a String with First Character at Front and Back");
  //Convert String to Lowercase
  print("6. Convert String to Lowercase");
  int choice = int.parse(stdin.readLineSync()!);
  switch (choice) {
    case 1:
      // Arithmetic operations on three numbers
      print("Enter three numbers:");
      double num1 = double.parse(stdin.readLineSync()!);
      double num2 = double.parse(stdin.readLineSync()!);
      double num3 = double.parse(stdin.readLineSync()!);
      double Final = (num1 + num2) * num3;
      print("The result of the arithmetic operation is: $Final");
      break;
    case 2:
      // Convert Celsius to Fahrenheit
      print("Enter temperature in Celsius:");
      double celsius = double.parse(stdin.readLineSync()!);
      double fahrenheit = (celsius * 9 / 5) + 32;
      print("Temperature in Fahrenheit: $fahrenheit");
      break;
    case 3:
      // Convert Celsius to Kelvin and Fahrenheit
      print("Enter temperature in Celsius:");
      double celsius = double.parse(stdin.readLineSync()!);
      double kelvin = celsius + 273.15;
      double fahrenheit = (celsius * 9 / 5) + 32;
      print("Temperature in Kelvin: $kelvin");
      print("Temperature in Fahrenheit: $fahrenheit");
      break;
    case 4:
      // Add Int Data Type Size to a Number
      print("Enter a number:");
      int number = int.parse(stdin.readLineSync()!);
      int sizeOfInt = 4;
      int result = number + sizeOfInt;
      print("Result after adding int size: $result");
      break;
    case 5:
      // Create a String with First Character at Front and Back
      print("Enter a string:");
      String inputString = stdin.readLineSync()!;
      String resultString = inputString[0] + inputString + inputString[0];
      print("Resulting string: $resultString");
      break;
    case 6:
      // Convert String to Lowercase
      print("Enter a string:");
      String inputString = stdin.readLineSync()!;
      String lowerCaseString = inputString.toLowerCase();
      print("Lowercase string: $lowerCaseString");
      break;
    default:
      print("Invalid choice. Please select a valid option.");
      break;
  }
}

import 'dart:io';

void main() {
print("Choose an option:");
print("1. Calculate the area of a circle");
print("2. Calculate the total cost for an area");
print("3. Calculate the cube of a number");
print("4. Hello name");
print("5. avg  of 4 numbers");
print("6. Arithmetic operations on two numbers");

int choice = int.parse(stdin.readLineSync()!);

switch (choice) {
  case 1:
    // Circle area calculation
    print("Enter the radius of the circle:");
    double pi = 3.14159;
    double radius = double.parse(stdin.readLineSync()!);
    double area = pi * radius * radius;
    print("The area of the circle is: $area");
    break;

  case 2:
    // Area cost
    print("Enter the cost per square unit:");
    double costPerUnit = double.parse(stdin.readLineSync()!);
    print("Enter the height and width of the room:");
    double height = double.parse(stdin.readLineSync()!);
    double width = double.parse(stdin.readLineSync()!);
    double totalArea = height * width;
    double totalCost = totalArea * costPerUnit;
    print("The total cost for the area is: $totalCost");
    break;

  case 3:
    // Cube number
    print("Enter a number:");
    double number = double.parse(stdin.readLineSync()!);
    double cube = number * number * number;
    print("The cube of the number is: $cube");
    break;
  case 4:
    // Hello name
    print("Enter your name:");
    String name = stdin.readLineSync()!;
    print("Hello, $name!");
    break;
  case 5:
    // Average of 4 numbers
    print("Enter 4 numbers:");
    double num1 = double.parse(stdin.readLineSync()!);
    double num2 = double.parse(stdin.readLineSync()!);
    double num3 = double.parse(stdin.readLineSync()!);
    double num4 = double.parse(stdin.readLineSync()!);
    double average = (num1 + num2 + num3 + num4) / 4;
    print("The average of the numbers is: $average");
    break;

  case 6:
    // Arithmetic operations
    print("Enter two numbers:");
    double numA = double.parse(stdin.readLineSync()!);
    double numB = double.parse(stdin.readLineSync()!);
    print("Choose an operation: +, -, *, /");
    String operation = stdin.readLineSync()!;

    switch (operation) {
      case '+':
        print("Result: ${numA + numB}");
        break;
      case '-':
        print("Result: ${numA - numB}");
        break;
      case '*':
        print("Result: ${numA * numB}");
        break;
      case '/':
        if (numB != 0) {
          print("Result: ${numA / numB}");
        } else {
          print("Error: Division by zero is not allowed.");
        }
        break;
      default:
        print("Invalid operation. Please choose +, -, *, or /.");
    }
    break;
  default:
    print("Invalid choice. Please select a valid option.");
}
}

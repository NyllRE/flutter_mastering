// ? Importing libraries
import 'dart:math';
import 'examples/classes.dart';

// todo: void : A special type that indicates a value that’s never used. Functions like printInteger() and main() that don’t explicitly return a value have the void return type

// todo: main(): The special, required, top-level function where app execution starts.

void main() {
  var number = 1998; // ? Declare and initialize a variable.
  printInteger(number); // ? Call a function.
  print(fibonacci(25));

  // ? class call
  var voyager = Spacecraft('ReJect', DateTime(2016, 9, 5));
  voyager.describe();
}

void printInteger(int year) {
  var value = "asd";
  if (year % 2 == 0) {
    value = "even";
  } else {
    value = "odd";
  }

  for (int month = 1; month <= 2; month++) {
    print(month);
  }

  print('The number is $value : $year.'); // ? Print to console.
}



int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}



void arrowFunction() {
  var flybyObjects = ["sus", "susturn", "bruh"];

  // todo: A shorthand => (arrow) syntax is handy for functions that contain a single statement. This syntax is especially useful when passing anonymous functions as arguments:

  flybyObjects.where((name) => name.contains('turn')).forEach(print);

  // ? Besides showing an anonymous function
  // * (the argument to where())
  // ? this code shows that you can use a function as an argument: the top-level print() function is an argument to forEach()
}

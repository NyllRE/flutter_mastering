// ? Importing libraries
// * import 'dart:math';
import 'examples/arrow_function.dart';
import 'examples/classes.dart';
import 'examples/integer.dart';

// todo: void : A special type that indicates a value that’s never used. Functions like printInteger() and main() that don’t explicitly return a value have the void return type

// todo: main(): The special, required, top-level function where app execution starts.

void main() {
  var number = 1998; // ? Declare and initialize a variable.
  printInteger(number); // ? Call a function.
  print(fibonacci(25));

  // ? class call
  var voyager = Spacecraft('ReJect', DateTime(2016, 9, 5));
  voyager.describe();
  arrowFunction();
  Orbiter('Voyager I', DateTime(1977, 9, 5), 54.8).describe();
}

int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

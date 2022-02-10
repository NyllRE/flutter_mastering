// void main(List<String> arguments) {
//   print('Hello world!');
// }

// todo void : A special type that indicates a value that’s never used. Functions like printInteger() and main() that don’t explicitly return a value have the void return type

void printInteger(int aNumber) {
  print('The number is $aNumber.'); // ? Print to console.
}

// todo main(): The special, required, top-level function where app execution starts.
// * This is where the app starts executing.

void main() {
  var number = 42; // Declare and initialize a variable.
  printInteger(number); // Call a function.
}

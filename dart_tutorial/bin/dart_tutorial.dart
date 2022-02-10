// void main(List<String> arguments) {
//   print('Hello world!');
// }

// todo void : A special type that indicates a value that’s never used. Functions like printInteger() and main() that don’t explicitly return a value have the void return type

// todo main(): The special, required, top-level function where app execution starts.

void main() {
  var number = 1998; // ? Declare and initialize a variable.
  printInteger(number); // ? Call a function.
  print(fibonacci(25));
}

void printInteger(int year) {
  var flybyObjects = ['Jupiter', 'Saturn', 'Uranus', 'Neptune'];
  if (year >= 2001) {
    print('21st century');
  } else if (year >= 1901) {
    print('20th century');
  }

  for (final object in flybyObjects) {
    print(object);
  }

  for (int month = 1; month <= 12; month++) {
    print(month);
  }

  while (year < 2022) {
    year += 1;
  }

  print('The number is $year.'); // ? Print to console.
}

int fibonacci(int n) {
  if (n == 0 || n == 1) return n;
  return fibonacci(n - 1) + fibonacci(n - 2);
}

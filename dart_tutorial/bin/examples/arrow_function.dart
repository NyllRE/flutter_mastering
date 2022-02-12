void arrowFunction() {
  var flybyObjects = [
    "this",
    "is",
    "an",
    "arrow",
    "function",
    "an arrow function example 's'"
  ];

  // todo: A shorthand => (arrow) syntax is handy for functions that contain a single statement. This syntax is especially useful when passing anonymous functions as arguments:

  flybyObjects.where((name) => name.contains('s')).forEach(print);

  // ? Besides showing an anonymous function
  // * (the argument to where())
  // ? this code shows that you can use a function as an argument: the top-level print() function is an argument to forEach()
}

import 'classes.dart';

void printInteger(int mNumber) {
  dynamic value;
  if (mNumber % 2 == 0) {
    value = "even";
  } else {
    value = "odd";
  }

  // for (int month = 1; month <= mNumber; month++) {
  //   print(month);
  // }

  print('The number is $value : $mNumber.'); // ? Print to console.
}

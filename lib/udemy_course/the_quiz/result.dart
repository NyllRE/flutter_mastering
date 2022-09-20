import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int total;
  final VoidCallback reset;
  const Result({
    Key? key,
    required this.total,
    required this.reset,
  }) : super(key: key);

  String get resMessage =>
      total >= 8 ? 'Dayum! you got $total!' : 'nice you got $total';

  @override
  Widget build(BuildContext context) => Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              resMessage,
              style: stResMessage,
            ),
            OutlinedButton(
              child: Text('Try Again?'),
              onPressed: reset,
              style: stRetry,
            ),
            //
          ],
        ),
      );
}

TextStyle stResMessage = const TextStyle(
  fontSize: 40,
  fontWeight: FontWeight.bold,
);

ButtonStyle stRetry = OutlinedButton.styleFrom(
  side: BorderSide(color: Colors.green),
);

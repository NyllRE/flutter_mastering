import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int total;
  const Result({Key? key, required this.total}) : super(key: key);

  String get resMessage =>
      total >= 8 ? 'Dayum! you got $total!' : 'nice you got $total';

  @override
  Widget build(BuildContext context) => Center(
        child: Text(
          resMessage,
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      );
}

import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int? total;
  const Result({Key? key, required this.total}) : super(key: key);

  @override
  Widget build(BuildContext context) => Center(
        child: Text(
          'You got $total',
          style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
        ),
      );
}

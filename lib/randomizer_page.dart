// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:math';
import 'package:flutter/material.dart';

class RandomizerPage extends StatefulWidget {
  final int min, max;

  const RandomizerPage({
    Key? key,
    required this.min,
    required this.max,
    isUnstable,
  }) : super(key: key);


  @override
  State<RandomizerPage> createState() => _RandomizerPageState();
}

class _RandomizerPageState extends State<RandomizerPage> {
  int? _generatedNumber;
  final randomNumber = Random();
  bool _isUnstable = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Randomizer Text'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              _generatedNumber?.toString() ?? 'Generate a Number',
              style: const TextStyle(fontSize: 42),
            ),
            Text(
              _isUnstable
                  ? 'Min is higher than max\nplease return and fix the issue'
                  : '',
              style: const TextStyle(color: Colors.red),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton.extended(
        label: const Text('Generate'),
        onPressed: () {
          if (widget.max <= widget.min) {
            setState(() {
              _isUnstable = true;
            });
          } else {
            setState(() {
              _generatedNumber = widget.min +
                  randomNumber.nextInt(widget.max + 1 - widget.min);
            });
          }
        },
      ),
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

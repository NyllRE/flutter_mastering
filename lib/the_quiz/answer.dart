import 'package:flutter/material.dart';
import 'package:flutter_mastering/reusable.dart';

class Answer extends StatelessWidget {
  final String answerText;
  final VoidCallback selectHandler;
  //=>> VoicCallBack >=> a function that doesn't take or return anything

  Answer(
    this.answerText,
    this.selectHandler,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: Edge(0, t: 20, r: 0, b: 0),
      child: ElevatedButton(
        child: Text(answerText),
        onPressed: selectHandler,
        style: ElevatedButton.styleFrom(
          fixedSize: const Size(
            250,
            30,
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

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
    return ElevatedButton(
      onPressed: selectHandler,
      child: Text(answerText),
    );
  }
}

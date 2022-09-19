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
    return Container(
      margin: EdgeInsets.fromLTRB(0, 20, 0, 0),
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

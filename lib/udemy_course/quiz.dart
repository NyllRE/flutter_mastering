import 'package:flutter/widgets.dart';
import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final VoidCallback next;
  final int qIdx;

  const Quiz({
    Key? key,
    required this.questions,
    required this.next,
    required this.qIdx,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) => Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Question(questions[qIdx]['question']),
          ...(questions[qIdx]['answers'] as List<String>)
              .map((idx) => Answer(idx, next))
              .toList(),
        ],
      );
}

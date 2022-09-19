import 'package:flutter/widgets.dart';

import 'answer.dart';
import 'question.dart';

class Quiz extends StatelessWidget {
  final List questions;
  final Function next;
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
          ...(questions[qIdx]['answers'] as List<Map<String, Object>>)
              .map((ans) => Answer(
                    ans['text'] as String,
                    () => next(ans['score']),
                  ))
              .toList(),
        ],
      );
}

// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_mastering/udemy_course/the_quiz/result.dart';
import 'the_quiz/answer.dart';
import 'the_quiz/question.dart';
import 'the_quiz/quiz.dart';

class UdemyCourseApp extends StatelessWidget {
  const UdemyCourseApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Randomizer',
      theme: ThemeData(
        primarySwatch: Colors.purple,
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int qIdx = 0;
  // static const will make sure it doesn't change anywhere even here
  static const questions = <Map<String, dynamic>>[
    {
      'question': 'What is ball?',
      'answers': [
        {'text': 'nut', 'score': 1},
        {'text': 'nutsack', 'score': 0},
      ],
    },
    {
      'question': 'how to ball?',
      'answers': [
        {'text': 'football', 'score': 0},
        {'text': 'George Floyd Mayweather', 'score': 1},
      ],
    },
    {
      'question': 'can you ball?',
      'answers': [
        {'text': 'uh', 'score': 9},
        {'text': 'um', 'score': 0},
      ],
    },
  ];

  int _totalScore = 0;

  void nextQ(int score) {
    setState(() {
      _totalScore += score;
      if (qIdx < questions.length) {
        qIdx += 1;
      }
    });
  }

  void _resetQ() => setState(() {
        _totalScore = 0;
        qIdx = 0;
      });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Udemy Course $_totalScore'),
      ),
      body: qIdx < questions.length
          ? Quiz(questions: questions, next: nextQ, qIdx: qIdx)
          : Result(total: _totalScore, reset: _resetQ),
    );
  }
}

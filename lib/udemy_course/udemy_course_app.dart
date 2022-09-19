// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'answer.dart';
import 'question.dart';
import 'quiz.dart';

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
      'answers': ['nut', 'nutsack'],
    },
    {
      'question': 'how to ball?',
      'answers': ['prank call', 'meme compilation'],
    },
    {
      'question': 'can you ball?',
      'answers': ['no', 'hell no'],
    },
  ];

  void nextQ() {
    setState(() {
      if (qIdx < questions.length) {
        qIdx += 1;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Udemy Course'),
      ),
      body: qIdx < questions.length
          ? Quiz(questions: questions, next: nextQ, qIdx: qIdx)
          : Center(child: Text('data')),
    );
  }
}

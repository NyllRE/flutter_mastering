// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_mastering/udemy_course/answer.dart';
import 'package:flutter_mastering/udemy_course/question.dart';

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
  static const List<Map> questions = [
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
      if (qIdx >= questions.length - 1) {
        qIdx = 0;
      } else {
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
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
          children: [
          Question(questions[qIdx]['question']),
          ...(questions[qIdx]['answers'] as List<String>)
              .map((idx) => Answer(idx, nextQ))
              .toList(),
          ],
      ),
    );
  }
}

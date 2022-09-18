// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
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
  List questions = [
    'what is ball',
    'how to ball',
    'can you balling?',
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
            Question(questions[qIdx]),
            ElevatedButton(
              child: Text(
                'ball',
              ),
              onPressed: () {
                nextQ();
                debugPrint('$qIdx');
              },
            )
          ],
      ),
    );
  }
}

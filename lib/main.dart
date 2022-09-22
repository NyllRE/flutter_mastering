// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'expenses/expenses_app.dart';
import 'the_quiz/quiz_app.dart';
import 'starter_tutorials/starter_tutorial_app.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Randomizer',
      theme: ThemeData(
        primarySwatch: Colors.lightGreen,
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Master Apps'),
      ),
      body: Center(
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const StarterTutorialApp();
                  },
                ),
              );
            },
            child: Text('First App'),
          ),
          OutlinedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const QuizApp();
                  },
                ),
              );
            },
            child: Text('Udemy Course App'),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (BuildContext context) {
                    return const ExpensesApp();
                  },
                ),
              );
            },
            child: Text('Expenses App'),
          ),
        ]),
      ),
    );
  }
}

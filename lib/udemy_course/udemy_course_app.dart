// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Udemy Course'),
      ),
      body: Column(
        children: [
          Center(
            child: Text('the start of the udemy course'),
          ),
          ElevatedButton(
            child: Text('ball'),
            onPressed: () {
              debugPrint('balls?!!!');
            },
          )
        ],
      ),
    );
  }
}

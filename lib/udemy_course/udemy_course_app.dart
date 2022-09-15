// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

void main() {
  runApp(const UdemyCourseApp());
}

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
        title: const Text('Udemy Course'),
      ),
      body: const Center(
        child: Text('the start of the udemy course'),
      ),
    );
  }
}

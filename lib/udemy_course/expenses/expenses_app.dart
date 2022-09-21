import 'package:flutter/material.dart';

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({Key? key}) : super(key: key);

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
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('bruh')),
        body: Column(
          children: const [
            Card(
              child: Text('bruh'),
              elevation: 5, //=> How high it feels >=> shadow depth
            ),
            Card(
              child: Text('List of TX'),
            ),
          ],
        ),
      );
}

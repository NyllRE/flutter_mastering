import 'package:flutter/material.dart';
import 'widgets/transaction_list.dart';
import 'widgets/add_transaction.dart';
import 'models/transaction.dart';
import 'package:intl/intl.dart';

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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            AddTransaction(),
            TransactionList(),
          ],
        ),
      );
}

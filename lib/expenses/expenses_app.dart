import 'package:flutter/material.dart';
import 'package:flutter_mastering/expenses/widgets/add_transaction.dart';
import 'package:flutter_mastering/expenses/widgets/chart.dart';
import 'package:flutter_mastering/expenses/widgets/transaction_list.dart';
import 'models/transaction.dart';

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
  State<RootPage> createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  final List<Transaction> _transactions = [
    Transaction(id: 'or4', title: 'Yeezys', amount: 69.99),
    Transaction(id: 'or5', title: 'Yeezys', amount: 69.99),
    Transaction(id: 'or6', title: 'Yeezys', amount: 69.99),
    Transaction(id: 'or7', title: 'Yeezys', amount: 69.99),
    Transaction(id: 'or8', title: 'Yeezys', amount: 69.99),
  ];

  List get _recentTransactions => _transactions
      .where(
        (tx) => tx.date.isAfter(DateTime.now().subtract(Duration(days: 7))),
      )
      .toList();

  void _addTransaction(String tTitle, double tAmount) {
    final newT = Transaction(
      id: DateTime.now().toString(),
      title: tTitle,
      amount: tAmount,
    );

  

    setState(() {
      _transactions.add(newT);
    });
  }

  void _startAddTransaction(BuildContext ctx) {
    showModalBottomSheet(
      context: ctx,
      builder: (_) => AddTransaction(_addTransaction),
    );
  }

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text('bruh'),
          actions: [
            IconButton(
              icon: Icon(Icons.add),
              onPressed: () => _startAddTransaction(context),
            ),
          ],
        ),
        body: Column(
          children: [
            Chart(recentTransactions: _recentTransactions as List<Transaction>),
            TransactionList(_transactions),
          ],
        ),
      );
}

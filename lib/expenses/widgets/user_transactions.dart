import 'package:flutter/material.dart';
import 'add_transaction.dart';
import 'transaction_list.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  const UserTransactions({Key? key}) : super(key: key);

  @override
  State<UserTransactions> createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final List<Transaction> _transactions = [
    Transaction(id: 'or4', title: 'Yeezys', amount: 69.99),
    Transaction(id: 'or5', title: 'Yeezys', amount: 69.99),
    Transaction(id: 'or6', title: 'Yeezys', amount: 69.99),
    Transaction(id: 'or7', title: 'Yeezys', amount: 69.99),
    Transaction(id: 'or8', title: 'Yeezys', amount: 69.99),
  ];

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

  @override
  Widget build(BuildContext context) => Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          AddTransaction(_addTransaction),
          TransactionList(_transactions),
        ],
      );
}

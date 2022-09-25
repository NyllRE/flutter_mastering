import 'package:flutter/material.dart';
import 'package:flutter_mastering/expenses/models/transaction.dart';
import 'package:flutter_mastering/reusable.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransactions;
  const Chart({
    Key? key,
    required this.recentTransactions,
  }) : super(key: key);

  List<Map<String, Object>> get transactionValues {
    return List.generate(
        7,
        (idx) => {
              'day': 't',
              'amount': 9.99,
            });
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 6,
      margin: edges(20, 20),
      child: Row(children: []),
    );
  }
}

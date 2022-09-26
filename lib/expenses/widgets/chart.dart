import 'package:flutter/material.dart';
import 'package:flutter_mastering/expenses/models/transaction.dart';
import 'package:flutter_mastering/reusable.dart';
import 'package:intl/intl.dart';

class Chart extends StatelessWidget {
  final List<Transaction> recentTransactions;
  const Chart({
    Key? key,
    required this.recentTransactions,
  }) : super(key: key);

  List<Map<String, Object>> get transactionValues {
    return List.generate(
      7,
      (idx) {
        final weekDay = DateTime.now().subtract(Duration(days: idx));
        late double totalSum;
        for (var rt in recentTransactions) {
          if (rt.date.day == weekDay.day &&
              rt.date.month == weekDay.month &&
              rt.date.year == weekDay.year) {
            totalSum += rt.amount;
          }
        }
        return {
          //=>> DateFormat.E() is a shortcut for weekday
          'day': DateFormat.E(weekDay),
          'amount': totalSum,
        };
      },
    );
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

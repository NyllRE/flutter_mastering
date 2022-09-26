import 'package:flutter/material.dart';
import 'package:flutter_mastering/expenses/models/transaction.dart';
import 'package:flutter_mastering/expenses/widgets/chart_bar.dart';
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
        double totalSum = 0;
        for (var rt in recentTransactions) {
          if (rt.date.day == weekDay.day &&
              rt.date.month == weekDay.month &&
              rt.date.year == weekDay.year) {
            totalSum += rt.amount;
          }
        }
        debugPrint(DateFormat.E().format(weekDay));
        return {
          //=>> DateFormat.E() is a shortcut for weekday
          'day': DateFormat.E().format(weekDay).substring(0, 1),
          'amount': totalSum,
        };
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    debugPrint(transactionValues.toString());
    return Card(
      elevation: 6,
      margin: edges(20, 20),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: transactionValues
              .map((data) => ChartBar(
                  label: data['name'].toString(),
                  spendingAmount: double.parse(data['amount'].toString()),
                  spendingPctOfTotal: 0))
              .toList()),
    );
  }
}
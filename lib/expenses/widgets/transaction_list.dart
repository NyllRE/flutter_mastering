import 'package:flutter/material.dart';
import 'package:flutter_mastering/expenses/widgets/transaction.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;
  final Function removeTransaction;

  TransactionList(this.transactions, this.removeTransaction);

  @override
  Widget build(BuildContext context) => Expanded(
      child: SizedBox(
          height: 500,
          child: transactions.isEmpty
          ? Center(
              child: Column(
                children: const [
                  SizedBox(
                    height: 50,
                  ),
                  Icon(
                    Icons.airline_seat_individual_suite,
                    color: Colors.grey,
                    size: 60,
                  ),
                  Text(
                    'No transactions yet',
                    style: TextStyle(
                        color: Colors.grey,
                        fontWeight: FontWeight.bold,
                        fontSize: 25),
                  ),
                  Text(
                    'press the + button above to add some',
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            )
          : ListView.builder(
                  itemCount: transactions.length,
                  itemBuilder: (_, idx) {
                    return TransactionWidget(
                        transactions, removeTransaction, idx);
                  },
                ),
        ),
      );
}

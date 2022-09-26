import 'package:flutter/material.dart';
import '/reusable.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatefulWidget {
  final List<Transaction> transactions;
  final Function removeTransaction;

  TransactionList(this.transactions, this.removeTransaction);

  @override
  State<TransactionList> createState() => _TransactionListState();
}

class _TransactionListState extends State<TransactionList> {
  @override
  Widget build(BuildContext context) => Expanded(
      child: SizedBox(
          height: 500,
      child: widget.transactions.isEmpty
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
              itemCount: widget.transactions.length,
              itemBuilder: (ctx, idx) => Card(
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          margin: Edge(15, t: 10),
                          padding: Edge(15, t: 10),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.purple,
                              width: 2,
                            ),
                          ),
                          child: Text(
                            '\$${widget.transactions[idx].amount}',
                            style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.bold,
                                fontSize: 20),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              widget.transactions[idx].title,
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            Text(
                              DateFormat('MM dd h:mm a')
                                  .format(widget.transactions[idx].date),
                              style: TextStyle(color: Colors.grey),
                            ),
                          ],
                        ),
                        Container(
                          padding: Edge(15, t: 10),
                          child: IconButton(
                              onPressed: () {
                                    setState(() {
                                      widget.removeTransaction(idx);
                                    });
                              },
                              icon: Icon(Icons.delete)),
                        )
                      ],
                    ),
                      ))));
}

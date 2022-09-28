import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../reusable.dart';
import '../models/transaction.dart';

class TransactionWidget extends StatefulWidget {
  final List<Transaction> transactions;
  final Function removeTransaction;
  final int idx;

  const TransactionWidget(
    this.transactions,
    this.removeTransaction,
    this.idx, {
    super.key,
  });

  @override
  State<TransactionWidget> createState() => _TransactionWidgetState();
}

class _TransactionWidgetState extends State<TransactionWidget> {
  @override
  Widget build(BuildContext context) {
    return Card(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: Edge(15, t: 10),
                padding: Edge(15, t: 10),
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Theme.of(context).primaryColor,
                    width: 1,
                  ),
                  borderRadius: BorderRadius.circular(5),
                ),
                child: Text(
                  '\$${widget.transactions[widget.idx].amount}',
                  style: TextStyle(
                      color: Theme.of(context).primaryColor,
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    widget.transactions[widget.idx].title,
                    style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    DateFormat('MM dd h:mm a')
                        .format(widget.transactions[widget.idx].date),
                    style: TextStyle(color: Colors.grey),
                  ),
                ],
              ),
            ],
          ),
          Container(
            padding: Edge(15, t: 10),
            // width: double.infinity,
            child: IconButton(
                onPressed: () {
                  setState(() {
                    widget.removeTransaction(widget.idx);
                  });
                },
                icon: Icon(Icons.delete)),
          )
        ],
      ),
    );
  }
}

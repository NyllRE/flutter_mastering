import 'package:flutter/material.dart';

class AddTransaction extends StatelessWidget {
  final titleCon = TextEditingController();
  final amountCon = TextEditingController();
  final Function addTransaction;

  AddTransaction(this.addTransaction);

  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              controller: titleCon,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountCon,
            ),
            TextButton(
              onPressed: () {
                addTransaction(
                  titleCon.text,
                  double.parse(amountCon.text),
                );
              },
              child: Text(
                'Add Transaction',
                style: TextStyle(color: Colors.purple),
              ),
            )
          ]),
        ));
  }
}

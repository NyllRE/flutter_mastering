import 'package:flutter/material.dart';

class AddTransaction extends StatelessWidget {
  final titleCon = TextEditingController();
  final amountCon = TextEditingController();
  final Function addTransaction;

  AddTransaction(this.addTransaction);

  void _adder() {
    if (titleCon.text.isEmpty || double.parse(amountCon.text) <= 0) {
      return;
    }

    addTransaction(
      titleCon.text,
      double.parse(amountCon.text),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Card(
        elevation: 5,
        child: Container(
          padding: EdgeInsets.all(10),
          child: Column(children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              onSubmitted: (_) => _adder,
              controller: titleCon,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              keyboardType: TextInputType.number,
              onSubmitted: (_) => _adder,
              controller: amountCon,
            ),
            TextButton(
              onPressed: _adder,
              child: Text(
                'Add Transaction',
                style: TextStyle(color: Colors.purple),
              ),
            )
          ]),
        ));
  }
}

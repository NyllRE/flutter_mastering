import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class AddTransaction extends StatefulWidget {
  final Function addTransaction;

  AddTransaction(this.addTransaction);

  @override
  State<AddTransaction> createState() => _AddTransactionState();
}

class _AddTransactionState extends State<AddTransaction> {
  final titleCon = TextEditingController();

  final amountCon = TextEditingController();

  void _adder() {
    if (titleCon.text.isEmpty || double.parse(amountCon.text) <= 0) {
      return;
    }

    widget.addTransaction(
      titleCon.text,
      double.parse(amountCon.text),
    );
    debugPrint('deez');
    Navigator.of(context).pop();
  }

  void _showDatePicker() {
    showDatePicker(
        context: context,
        initialDate: DateTime.now(),
        firstDate: DateTime(2022),
        lastDate: DateTime.now());
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
            SizedBox(
              height: 70,
              child: Row(children: [
                Text('No Date Chosen'),
                TextButton(
                    onPressed: _showDatePicker,
                    child: Text(
                      'Choose Date',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    )),
              ]),
            ),
            TextButton(
              onPressed: _adder,
              child: Text(
                'Add Transaction',
                // style: TextStyle(color: Colors.purple),
              ),
            )
          ]),
        ));
  }
}

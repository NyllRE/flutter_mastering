import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  _LearnFlutterPageState createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text('deez driving me nuts'),
          automaticallyImplyLeading: false,
          leading: IconButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            icon: const Icon(Icons.arrow_back_ios),
          )),
      body: Column(
        children: [
          Image.asset('images/heisenburger.png'),

          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
          )
        ],
      ),
    );
  }
}

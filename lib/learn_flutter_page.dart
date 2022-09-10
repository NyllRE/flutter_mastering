import 'package:flutter/material.dart';

class LearnFlutterPage extends StatefulWidget {
  const LearnFlutterPage({Key? key}) : super(key: key);

  @override
  _LearnFlutterPageState createState() => _LearnFlutterPageState();
}

class _LearnFlutterPageState extends State<LearnFlutterPage> {
  bool isSwitched = true;
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
        ),
      ),
//
      body: Column(
        children: [
          Image.asset('images/heisenburger.png'),
          const SizedBox(
            height: 10,
          ),
          const Divider(
            color: Colors.black,
          ),
          Container(
            margin: const EdgeInsets.all(10),
            padding: const EdgeInsets.all(10),
            color: Colors.blueGrey,
            width: double.infinity,
            child: const Center(
              child: Text(
                'deez',
                style: TextStyle(color: Colors.white),
              ),
            ),
          ),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              primary: isSwitched ? Colors.green : Colors.blue,
            ),
            onPressed: () {
              debugPrint('deez');
            },
            child: const Text('Elevated Button'),
          ),
          OutlinedButton(
            onPressed: () {
              debugPrint('deez');
            },
            child: const Text('Outlined Button'),
          ),
          TextButton(
            onPressed: () {
              debugPrint('deez');
            },
            child: const Text('Text Button'),
          ),
          GestureDetector(
            behavior: HitTestBehavior.opaque,
            onTap: () => debugPrint('deez'),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: const [
                Icon(Icons.local_fire_department),
                Text(
                  'Row Widget',
                ),
                Icon(Icons.local_fire_department, color: Colors.red),
              ],
            ),
          ),
          Switch(
            value: isSwitched,
            onChanged: (bool newVal) {
              setState(() {
                isSwitched = newVal;
              });
            },
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

import 'learn_flutter_page.dart';

class HourPage extends StatefulWidget {
  const HourPage({Key? key}) : super(key: key);

  @override
  State<HourPage> createState() => _HourPageState();
}

class _HourPageState extends State<HourPage> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: ElevatedButton(
        onPressed: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (BuildContext context) {
                return const LearnFlutterPage();
              },
            ),
          );
        },
        child: const Text('Learn Flutter'),
      ),
    );
  }
}

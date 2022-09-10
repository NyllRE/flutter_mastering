import 'package:flutter/material.dart';

class HourPage extends StatefulWidget {
  const HourPage({Key? key}) : super(key: key);

  @override
  State<HourPage> createState() => _HourPageState();
}

class _HourPageState extends State<HourPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('br'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          debugPrint('floating action button');
        },
        child: const Icon(Icons.arrow_forward_ios),
      ),
    );
  }
}

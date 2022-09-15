// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:flutter_mastering/starter_tutorials/hour_tutorial.dart';
import 'package:flutter_mastering/starter_tutorials/profile_page.dart';
import 'range_selector_page.dart';

void main() {
  runApp(const StarterTutorialApp());
}

class StarterTutorialApp extends StatelessWidget {
  const StarterTutorialApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Randomizer',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const RootPage(),
    );
  }
}

class RootPage extends StatefulWidget {
  const RootPage({Key? key}) : super(key: key);

  @override
  _RootPageState createState() => _RootPageState();
}

class _RootPageState extends State<RootPage> {
  int currentPage = 0;
  List<Widget> pages = const [
    HourPage(),
    ProfilePage(),
    RangeSelectorPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('what?'),
      ),
      body: pages[currentPage],
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () {},
      //   child: const Icon(Icons.arrow_forward_ios),
      // ),
      bottomNavigationBar: NavigationBarTheme(
        data: NavigationBarThemeData(
          indicatorColor: Colors.white.withOpacity(0.4),
        ),
        child: NavigationBar(
          backgroundColor: Colors.teal,
          // labelBehavior: NavigationDestinationLabelBehavior.alwaysHide,
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home),
              label: 'home',
            ),
            NavigationDestination(
              icon: Icon(Icons.person),
              label: 'profile',
            ),
            NavigationDestination(
              icon: Icon(Icons.book),
              label: 'form',
            ),
          ],
          onDestinationSelected: (int idx) {
            setState(() {
              currentPage = idx;
            });
          },
          selectedIndex: currentPage,
        ),
      ),
    );
  }
}

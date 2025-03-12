import 'package:dars29/screens/search_screen.dart';
import 'package:flutter/material.dart';

import '../screens/home_screen.dart';
import '../screens/profile_screen.dart';
import '../screens/settings_screen.dart';

class AppLayout extends StatefulWidget {
  const AppLayout({super.key});

  @override
  State<AppLayout> createState() => _AppLayoutState();
}

class _AppLayoutState extends State<AppLayout> {
  final List<Widget> pages = [
    HomeScreen(), // 0
    SearchScreen(), // 1
    ProfileScreen(), // 2
    SettingsScreen(), // 3
  ];

  int index = 3;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[index],
      bottomNavigationBar: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          IconButton(
            onPressed: () {
              index = 0;
              setState(() {});
            },
            icon: Icon(Icons.home, color: index == 0 ? Colors.red : null),
          ),
          IconButton(
            onPressed: () {
              index = 1;
              setState(() {});
            },
            icon: Icon(Icons.search),
          ),
          IconButton(
            onPressed: () {
              index = 2;
              setState(() {});
            },
            icon: Icon(Icons.person),
          ),
          IconButton(
            onPressed: () {
              index = 3;
              setState(() {});
            },
            icon: Icon(Icons.settings),
          ),
        ],
      ),
    );
  }
}

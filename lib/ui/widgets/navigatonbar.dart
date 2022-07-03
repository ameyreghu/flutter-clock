import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

Widget buildNavigationBar(int _selectedIndex, Function fn) {
  return NavigationBarTheme(
      data: const NavigationBarThemeData(
        backgroundColor: Colors.transparent,
        indicatorColor: Colors.lightBlueAccent,
      ),
      child: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.timer), label: 'Clock'),
          NavigationDestination(icon: Icon(Icons.alarm), label: 'Alarm'),
          NavigationDestination(icon: Icon(Icons.timer_sharp), label: 'Timer'),
          NavigationDestination(icon: Icon(Icons.language), label: 'World'),
        ],
        selectedIndex: _selectedIndex,
        onDestinationSelected: (val) {
          fn(val);
        },
      ));
}

// ignore_for_file: inference_failure_on_untyped_parameter, duplicate_ignore, type_annotate_public_apis

// ignore_for_file: inference_failure_on_untyped_parameter

import 'package:flutter/material.dart';
import 'package:test_flutter_ui_1106/home_page.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({super.key});

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _currentIndex = 0;

  ///
  Widget getWidgets(index) {
    switch (index) {
      case 0:
        return const HomePage();
      case 1:
        return Center(
          child: Text(
            'Dashboard',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.yellowAccent.shade700,
              fontSize: 50,
            ),
          ),
        );
      case 2:
        return Center(
          child: Text(
            'Cart',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.yellowAccent.shade700,
              fontSize: 50,
            ),
          ),
        );
      case 3:
        return Center(
          child: Text(
            'Profile',
            style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.yellowAccent.shade700,
              fontSize: 50,
            ),
          ),
        );
    }

    return Container();
  }

  ///
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: getWidgets(_currentIndex),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedItemColor: Colors.yellowAccent.shade700,
        unselectedItemColor: Colors.yellowAccent.shade700.withOpacity(0.6),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.dashboard),
            label: 'Dashboard',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (int index) {
          setState(() {
            _currentIndex = index;
          });
        },
      ),
    );
  }
}

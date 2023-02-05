import 'package:flutter/material.dart';
import 'package:timely/pages/exam_screen.dart';
import 'package:timely/pages/profie_screen.dart';
import 'package:timely/pages/reading_screen.dart';
import 'package:timely/pages/home_screen.dart';

import '../pages/test_screen.dart';

class BottomNav extends StatefulWidget {
  const BottomNav({Key? key}) : super(key: key);

  @override
  State<BottomNav> createState() => _BottomNavState();
}

class _BottomNavState extends State<BottomNav> {
  int _selectedIndex = 0;

  static const List<Widget> _pages = <Widget>[
    HomeScreen(),
    ExamScreen(),
    TestScreen(),
    ReadingScreen(),
    ProfileScreen()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        showUnselectedLabels: true,
        unselectedItemColor: Colors.black54,
        selectedItemColor: Theme.of(context).primaryColor,
        onTap: _onItemTapped,
        currentIndex: _selectedIndex,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.rate_review,
              color: Color(0xFFB3B3B3),
            ),
            label: 'Exams',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.mode_edit, color: Color(0xFFB3B3B3)),
            label: 'Test',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.auto_stories, color: Color(0xFFB3B3B3)),
            label: 'Reading',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person, color: Color(0xFFB3B3B3)),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}
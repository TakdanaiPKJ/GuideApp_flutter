import 'package:flutter/material.dart';
import 'package:flutter_application_1/userpage/userhome.dart';
import 'package:flutter_application_1/userpage/usermap.dart';
import 'package:flutter_application_1/userpage/userplan.dart';
import 'package:flutter_application_1/userpage/usersetting.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});
  @override
  State<HomePage> createState() => _HomePageState();
}

int _currentIndex = 0;

List<Widget> navpage = const [
  UserHome(),
  UserMap(),
  UserPlan(),
  UserSetting(),
];

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: navpage[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        unselectedItemColor: Colors.grey.shade700,
        selectedItemColor: Colors.black,
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.map_sharp), label: 'Map'),
          BottomNavigationBarItem(
              icon: Icon(Icons.book_rounded), label: 'Plan'),
          BottomNavigationBarItem(
              icon: Icon(Icons.settings), label: 'Settings'),
        ],
      ),
    );
  }
}

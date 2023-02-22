import 'package:flutter/material.dart';
import 'package:flutter_application_1/homepage.dart';
import 'package:flutter_application_1/userpage/userhome.dart';
import 'package:flutter_application_1/userpage/usermap.dart';
import 'package:flutter_application_1/userpage/userlist.dart';
import 'package:flutter_application_1/userpage/usersetting.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => const HomePage(),
        'home': (context) => const UserHome(),
        'map': (context) => const UserMap(),
        'plan': (context) => const UserList(),
        'setting': (context) => const UserSetting(),
      },
    );
  }
}

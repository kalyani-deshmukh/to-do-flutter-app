import 'package:flutter/material.dart';
import 'package:ms_todo/screens/home_screen.dart';
import 'package:ms_todo/screens/login_screen.dart';
import 'package:ms_todo/screens/myday.dart';
import 'package:ms_todo/screens/profile_screen.dart';
import 'package:ms_todo/screens/search_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/myday',
      routes: {
        '/home' : (context) => HomeScreen(),
        '/login': (context) => LoginScreen(),
        '/profile': (context) => ProfileScreen(),
        '/search': (context) => SearchScreen(),
        '/myday': (context) => MyDay(),

      },
    );
  }
}

import 'package:flutter/material.dart';
import 'login_page.dart';
import 'home_page.dart';
import 'dashboard_page.dart';
import 'add_page.dart';
import 'update_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Tugas Mobile Programming',
      initialRoute: '/',
      routes: {
        '/': (context) => LoginPage(),
        '/home': (context) => HomePage(),
        '/dashboard': (context) => DashboardPage(),
        '/add': (context) => AddPage(),
        '/update': (context) => UpdatePage(),
      },
    );
  }
}

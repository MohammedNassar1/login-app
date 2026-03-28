import 'package:flutter/material.dart';
import 'package:login_app/pages/login_page.dart';
import 'package:login_app/pages/sginup_page.dart';
import 'package:login_app/pages/welcom_page.dart';

void main() {
  runApp(LoginApp());
}

class LoginApp extends StatelessWidget {
  const LoginApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => WelcomPage(),
        '/login': (context) => LoginPage(),
        '/signup': (context) => SginupPage(),
      },
    );
  }
}

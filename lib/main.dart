import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:musix/auth/welcome_screen.dart';
import 'package:musix/screens/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome_Screen(),
        'Home': (context) => Home(),
      },
    );

  }
}
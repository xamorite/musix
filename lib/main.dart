import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:musix/appNavigation.dart';
import 'package:musix/auth/welcome_screen.dart';
import 'package:musix/screens/home.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

void main() => runApp(MyApp());
int selectedIndex = 0;
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      initialRoute: '/',
      routes: {
        '/': (context) => Welcome_Screen(),
        'Home': (context) => Home(),
        'appNav': (context) => Nav(),
      },

    );

  }
}

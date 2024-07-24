import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:musix/screens/home.dart';
import 'package:musix/screens/library.dart';
import 'package:musix/screens/search.dart';
import 'package:zoom_tap_animation/zoom_tap_animation.dart';

class Nav extends StatefulWidget {

  const Nav({super.key});

  @override
  State<Nav> createState() => _NavState();
}

class _NavState extends State<Nav> {
  int selectedIndex = 0;

  final List<Widget> screens = [
    Home(),
    Search(),
    Library(),
  ];

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Scaffold(
        body: Stack(
      children: [
        screens[selectedIndex],
        Positioned(
          bottom: 0,
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: screenSize.width * 0.1),
            width: screenSize.width * 1,
            height: screenSize.width * 0.15,
            color: Colors.black54.withOpacity(0.5),
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                IconButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 0;
                    });
                  },
                  icon: Icon(Icons.home, size: screenSize.width * 0.1,),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 1;
                    });
                  },
                  icon: Icon(Icons.search,size: screenSize.width * 0.1),
                ),
                IconButton(
                  onPressed: () {
                    setState(() {
                      selectedIndex = 2;
                    });
                  },
                  icon: Icon(Icons.library_music,size: screenSize.width * 0.1),
                )
              ],
            ),
          ),
        )
      ],
    )
        );
  }
}

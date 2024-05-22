import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:musix/components/homsec.dart';
import 'package:musix/components/subScreens/sec1.dart';

// ignore: must_be_immutable
class Home extends StatelessWidget {
  Home({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
          child: Scaffold(
        backgroundColor: Colors.black,
        body: Container(
          width: double.infinity,
          height: double.infinity,
          margin: EdgeInsets.all(5),
          child: Column(
            children: [
              Container(
                height: 120,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(20.0),
                      child: Container(
                        height: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '👋Hi Logan,',
                              style: TextStyle(
                                  color: Colors.white60, fontSize: 20),
                            ),
                            Text(
                              'Good Evening',
                              style:
                                  TextStyle(color: Colors.white, fontSize: 25),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 150,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.notification_add,
                          size: 30,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.person_2_outlined,
                          size: 30,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              // Homesec(),
              Featuring_Today(),
            ],
          ),
        ),
      )),
    );
  }
}

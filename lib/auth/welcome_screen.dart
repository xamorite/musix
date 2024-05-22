import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// ignore: unused_import
import 'package:musix/screens/home.dart';

class Welcome_Screen extends StatelessWidget {
  const Welcome_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: Center(
          child: Container(
              margin: EdgeInsets.symmetric(horizontal: 50, vertical: 100),
              child: Column(
                children: [
                  Column(
                    children: [
                      Image(image: AssetImage('assets/images/musix.png')),
                      Text(
                        'Just keep on vibing!',
                        style: TextStyle(color: Colors.white60),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 300,
                  ),
                  Column(
                    children: [
                      ElevatedButton(
                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            minimumSize: Size(300, 50),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                          ),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold),
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      OutlinedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                                StadiumBorder()),
                            side: MaterialStateProperty.resolveWith<BorderSide>(
                                (Set<MaterialState> states) {
                              final Color color =
                                  states.contains(MaterialState.pressed)
                                      ? const Color.fromARGB(255, 6, 63, 8)
                                      : Colors.white;
                              return BorderSide(color: color, width: 2);
                            }),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.phone_android_outlined),
                              Text(
                                'Continue with Phone Number',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      OutlinedButton(
                          style: ButtonStyle(
                            shape: MaterialStateProperty.all<OutlinedBorder>(
                                StadiumBorder()),
                            side: MaterialStateProperty.resolveWith<BorderSide>(
                                (Set<MaterialState> states) {
                              final Color color =
                                  states.contains(MaterialState.pressed)
                                      ? const Color.fromARGB(255, 6, 63, 8)
                                      : Colors.white;
                              return BorderSide(color: color, width: 2);
                            }),
                          ),
                          onPressed: () {},
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Icon(Icons.phone_android_outlined),
                              Text(
                                'Continue with Google',
                                style: TextStyle(
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'Home');
                          },
                          child: Text(
                            'Log in',
                            style:
                                TextStyle(color: Colors.white60, fontSize: 19),
                          ))
                    ],
                  )
                ],
              )),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
// ignore: unused_import
import 'package:musix/screens/home.dart';
import 'package:musix/main.dart';

class Welcome_Screen extends StatelessWidget {
  const Welcome_Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return MaterialApp(
      // themeMode:ThemeMode.light,
      theme: ThemeData.dark(),
      home: Scaffold(
        // backgroundColor: Colors.black,
        body: Center(
          child: Container(
            padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height * 0.20, horizontal: 30.0 ),
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
                    height: MediaQuery.of(context).size.height * 0.1,
                  ),
                  Column(
                    children: [
                      ElevatedButton(

                          onPressed: () {},
                          style: ElevatedButton.styleFrom(
                            backgroundColor: Colors.white,
                            minimumSize: Size(300, 50),
                            padding: EdgeInsets.symmetric(horizontal: 16),
                          ),
                          child: Text(
                            'Sign Up',
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: MediaQuery.of(context).size.width * 0.045,
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
                                  fontSize: MediaQuery.of(context).size.width * 0.045
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
                                    fontSize: MediaQuery.of(context).size.width * 0.045
                                ),
                              ),
                            ],
                          )),
                      SizedBox(
                        height: 20,
                      ),
                      TextButton(
                          onPressed: () {
                            Navigator.pushNamed(context, 'appNav');
                          },
                          child: Text(
                            'Log in',
                            style:
                                TextStyle(color: Colors.white60, fontSize: MediaQuery.of(context).size.width * 0.05),
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

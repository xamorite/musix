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
    final screenSize = MediaQuery.of(context).size;
    List<Widget> mixes = [
      card(imageUrl: 'assets/images/beach.png', title: 'Inside Out', author: 'Xam',),
      card(imageUrl: 'assets/images/kill.png', title: 'Somebody', author: 'Xam',),
      card(imageUrl: 'assets/images/somebody.png', title: 'It wont kill', author: 'Xam',),
      card(imageUrl: 'assets/images/kid.png', title: 'Kids', author: 'Xam',),
      card(imageUrl: 'assets/images/memories.png', title: 'Memories', author: 'Xam',),
      card(imageUrl: 'assets/images/settings.png', title: 'Young', author: 'Xam',),

    ];
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData.dark(),
      home: Scaffold(
              body: Container(
      width: double.infinity,
      height: double.infinity,
      margin: const EdgeInsets.all(5),
      child:  Expanded(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 120,
                // width: double.infinity,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                      padding: EdgeInsets.all(5.0),
                      child: SizedBox(
                        height: 120,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              '👋Hi Logan,',
                              style: TextStyle(
                                  color: Colors.white60, fontSize:screenSize.width * 0.04,),
                            ),
                            Text(
                              'Good Evening',
                              style:
                                  TextStyle(color: Colors.white, fontSize: screenSize.width * 0.06,),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      width: screenSize.width * 0.40,
                    ),
                    Row(
                      children: [
                        Icon(
                          Icons.notification_add,
                          size: screenSize.width * 0.065,
                          color: Colors.white,
                        ),
                        SizedBox(
                          width: 10,
                        ),
                        Icon(
                          Icons.person_2_outlined,
                          size: screenSize.width * 0.065,
                          color: Colors.white,
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Homesec(),
              FullRow(screenSize: screenSize, songs: mixes, rowName: 'Mixes for you'),

              // Featuring_Today(),
            ],
          ),
        ),
      ),
              ),
            ),
    );
  }
}

class card extends StatelessWidget {
  const card({
    super.key, required this.imageUrl, required this.title, required this.author,
  });
  final String imageUrl;
  final String title;
  final String author;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 120,
          width: 120,
          alignment: Alignment.bottomLeft,
          padding: const EdgeInsets.symmetric(horizontal: 10),
          margin: const EdgeInsets.all(5),
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage(
                  imageUrl,
                ),
                fit: BoxFit.fill),
          ),
          child: Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.only(bottom: 3),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.play_circle,
                    color: Colors.white,
                    size: 40,
                  )),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            title,
            style: const TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}

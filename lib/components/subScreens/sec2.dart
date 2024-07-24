import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Relax extends StatefulWidget {
  const Relax({super.key});

  @override
  State<Relax> createState() => _RelaxState();
}

class _RelaxState extends State<Relax> {
  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
           Text(
            'Today’s Refreshing Song-Recommendations',
            style: TextStyle(color: Colors.white, fontSize: screenSize.width * 0.07),
          ),
          Container(
            height: MediaQuery.of(context).size.height * 0.63,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // color: Colors.white,
            ),
            child: LayoutBuilder(builder: (context, constraints) {
              return ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  Container(
                    width: 380,
                    // height: 200,
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(96, 54, 53, 53),
                    ),
                    child: Align(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Image(
                                  image: AssetImage(
                                    'assets/images/relax.png',
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Peace',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          '22 songs',
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.white38,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                    CupertinoIcons.heart)),
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(Icons.menu))
                                          ],
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.play_circle,
                                              color: Colors.white,
                                              size: 70,
                                            ))
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Container(
                              child: const Column(
                                children: [
                                  playListTile(
                                    imageUrl: 'assets/images/recently.png',
                                    songTitle: 'Weightless',
                                    songAuthor: 'Marconi Union',
                                  ),
                                  playListTile(
                                    imageUrl: 'assets/images/beach.png',
                                    songTitle: 'Weightless',
                                    songAuthor: 'Marconi Union',
                                  ),
                                  playListTile(
                                    imageUrl: 'assets/images/smokers.png',
                                    songTitle: 'Weightless',
                                    songAuthor: 'Marconi Union',
                                  ),
                                  playListTile(
                                    imageUrl: 'assets/images/kill.png',
                                    songTitle: 'Weightless',
                                    songAuthor: 'Marconi Union',
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            ElevatedButton(
                                onPressed: () {}, child: const Text('see more', style: TextStyle(fontWeight: FontWeight.w500),))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 380,
                    // height: 200,
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(96, 54, 53, 53),
                    ),
                    child: Align(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Image(
                                  image: AssetImage(
                                    'assets/images/relax.png',
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Peace',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: screenSize.width * 0.07,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          '22 songs',
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                            fontSize: screenSize.width * 0.04,
                                            color: Colors.white38,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                    CupertinoIcons.heart)),
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(Icons.menu))
                                          ],
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.play_circle,
                                              color: Colors.white,
                                              size: 70,
                                            ))
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Container(
                              child: const Column(
                                children: [
                                  playListTile(
                                    imageUrl: 'assets/images/recently.png',
                                    songTitle: 'Weightless',
                                    songAuthor: 'Marconi Union',
                                  ),
                                  playListTile(
                                    imageUrl: 'assets/images/beach.png',
                                    songTitle: 'Weightless',
                                    songAuthor: 'Marconi Union',
                                  ),
                                  playListTile(
                                    imageUrl: 'assets/images/smokers.png',
                                    songTitle: 'Weightless',
                                    songAuthor: 'Marconi Union',
                                  ),
                                  playListTile(
                                    imageUrl: 'assets/images/kill.png',
                                    songTitle: 'Weightless',
                                    songAuthor: 'Marconi Union',
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            ElevatedButton(
                                onPressed: () {}, child: const Text('see more', style: TextStyle(fontWeight: FontWeight.w500),))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 380,
                    // height: 200,
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(96, 54, 53, 53),
                    ),
                    child: Align(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Image(
                                  image: AssetImage(
                                    'assets/images/relax.png',
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                     Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Gentle\nAcoustic in...',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: screenSize.width * 0.04,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          '60 songs',
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                            fontSize: screenSize.width * 0.035,
                                            color: Colors.white38,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                    CupertinoIcons.heart)),
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(Icons.menu))
                                          ],
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.play_circle,
                                              color: Colors.white,
                                              size: 70,
                                            ))
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Container(
                              child: const Column(
                                children: [
                                  playListTile(
                                    imageUrl: 'assets/images/recently.png',
                                    songTitle: 'Weightless',
                                    songAuthor: 'Marconi Union',
                                  ),
                                  playListTile(
                                    imageUrl: 'assets/images/beach.png',
                                    songTitle: 'Weightless',
                                    songAuthor: 'Marconi Union',
                                  ),
                                  playListTile(
                                    imageUrl: 'assets/images/smokers.png',
                                    songTitle: 'Weightless',
                                    songAuthor: 'Marconi Union',
                                  ),
                                  playListTile(
                                    imageUrl: 'assets/images/kill.png',
                                    songTitle: 'Weightless',
                                    songAuthor: 'Marconi Union',
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            ElevatedButton(
                                onPressed: () {}, child: const Text('see more', style: TextStyle(fontWeight: FontWeight.w500),))
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 380,
                    // height: 200,
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(96, 54, 53, 53),
                    ),
                    child: Align(
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 2),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                const Image(
                                  image: AssetImage(
                                    'assets/images/relax.png',
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    const Column(
                                      crossAxisAlignment:
                                      CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Peace',
                                          style: TextStyle(
                                            fontWeight: FontWeight.bold,
                                            fontSize: 30,
                                            color: Colors.white,
                                          ),
                                        ),
                                        Text(
                                          '22 songs',
                                          style: TextStyle(
                                            // fontWeight: FontWeight.bold,
                                            fontSize: 15,
                                            color: Colors.white38,
                                          ),
                                        ),
                                      ],
                                    ),
                                    Row(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(
                                                    CupertinoIcons.heart)),
                                            IconButton(
                                                onPressed: () {},
                                                icon: const Icon(Icons.menu))
                                          ],
                                        ),
                                        IconButton(
                                            onPressed: () {},
                                            icon: const Icon(
                                              Icons.play_circle,
                                              color: Colors.white,
                                              size: 70,
                                            ))
                                      ],
                                    )
                                  ],
                                )
                              ],
                            ),
                            Container(
                              child: const Column(
                                children: [
                                  playListTile(
                                    imageUrl: 'assets/images/recently.png',
                                    songTitle: 'Weightless',
                                    songAuthor: 'Marconi Union',
                                  ),
                                  playListTile(
                                    imageUrl: 'assets/images/beach.png',
                                    songTitle: 'Weightless',
                                    songAuthor: 'Marconi Union',
                                  ),
                                  playListTile(
                                    imageUrl: 'assets/images/smokers.png',
                                    songTitle: 'Weightless',
                                    songAuthor: 'Marconi Union',
                                  ),
                                  playListTile(
                                    imageUrl: 'assets/images/kill.png',
                                    songTitle: 'Weightless',
                                    songAuthor: 'Marconi Union',
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(height: 5,),
                            ElevatedButton(
                                onPressed: () {}, child: const Text('see more', style: TextStyle(fontWeight: FontWeight.w500),))
                          ],
                        ),
                      ),
                    ),
                  ),


                ],
              );
            }),
          ),
        ],
      ),
    );
  }
}

class playListTile extends StatelessWidget {
  const playListTile({
    super.key,
    required this.imageUrl,
    required this.songTitle,
    required this.songAuthor,
  });

  final String imageUrl;
  final String songTitle;
  final String songAuthor;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return ListTile(
      title: Text(
        songTitle,
        style:
             TextStyle(fontSize:screenSize.width * 0.05, fontWeight: FontWeight.w500, color: Colors.white),
      ),
      subtitle: Text(songAuthor,style: TextStyle(fontSize: screenSize.width * 0.04),),
      leading: Image(
        image: AssetImage(
          imageUrl,
        ),
      ),
      trailing: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
    );
  }
}

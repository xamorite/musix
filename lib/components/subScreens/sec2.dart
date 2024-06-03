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
    return Container(
      padding: const EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            'Today’s Refreshing Song-Recommendations',
            style: TextStyle(color: Colors.white, fontSize: 34),
          ),
          Container(
            height: 500,
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
                    height: 200,
                    padding: const EdgeInsets.all(20.0),
                    margin: const EdgeInsets.all(5),

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: const Color.fromARGB(96, 54, 53, 53),
                    ),
                    child:  Align(
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          // mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                              Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                               children: [
                              Image(
                                image:AssetImage(
                                'assets/images/relax.png',
                              ), ),
                               SizedBox(width: 20,),
                               Column(
                                 crossAxisAlignment: CrossAxisAlignment.start,
                                 children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                  Text('Peace',
                                  style: TextStyle(
                                    fontWeight: FontWeight.bold,
                                    fontSize: 30,
                                    color: Colors.white,
                                  ),),
                                  Text('22 songs',
                                    style: TextStyle(
                                      // fontWeight: FontWeight.bold,
                                      fontSize: 15,
                                      color: Colors.white38,
                                    ),),
                                ],),
                                 Row(
                                   children: [
                                     Row(
                                 mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                       children: [
                                         IconButton(onPressed: (){}, icon:Icon( CupertinoIcons.heart)),
                                         IconButton(onPressed: (){}, icon:Icon( Icons.menu))
                                       ],
                                     ),
                                     IconButton(onPressed: (){}, icon: Icon(Icons.play_circle, color: Colors.white, size: 70,))
                                   ],
                                 )
                               ],)
                            ],),
                             Container(),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    margin: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/weekly.png',
                          ),
                          fit: BoxFit.fill),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Weekly',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Top 20',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    margin: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/sing.png',
                          ),
                          fit: BoxFit.fill),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'Sing along with',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'Tye Tribbet',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    margin: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/allnew.png',
                          ),
                          fit: BoxFit.fill),
                    ),
                    child: const Padding(
                      padding: EdgeInsets.only(bottom: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Text(
                            'All New from',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                          Text(
                            'TAMIL\nTRENDING',
                            style: TextStyle(
                                fontSize: 24,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    width: 300,
                    height: 200,
                    alignment: Alignment.bottomLeft,
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    margin: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage(
                            'assets/images/thisweek.png',
                          ),
                          fit: BoxFit.fill),
                    ),
                    child: const Align(
                      alignment: Alignment.bottomLeft,
                      child: Padding(
                        padding: EdgeInsets.only(bottom: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text(
                              'This Weeks',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.white,
                              ),
                            ),
                            Text(
                              'AFRO\nGOSPEL',
                              style: TextStyle(
                                  fontSize: 24,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold),
                            ),
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

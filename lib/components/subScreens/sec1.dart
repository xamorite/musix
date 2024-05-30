import 'package:flutter/material.dart';

class Featuring_Today extends StatefulWidget {
  const Featuring_Today({super.key});

  @override
  State<Featuring_Today> createState() => _Featuring_TodayState();
}

class _Featuring_TodayState extends State<Featuring_Today> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Featuring Today',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          SizedBox(
            height: 30,
          ),
          Container(
            height: 200,
            width: double.infinity,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              // color: Colors.white,
            ),
            child: LayoutBuilder(builder: (context, constraints) {
              return SingleChildScrollView(
                primary: false,
                child: ConstrainedBox(
                  constraints: BoxConstraints(minHeight: constraints.maxHeight),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Stack(
                        // alignment: Alignment.centerLeft,
                        children: [
                          Image(
                              image: AssetImage(
                                'assets/images/download.jpg',
                              ),
                              fit: BoxFit.contain),
                          Column(
                            children: [
                              Text(
                                'Agallio',
                                style: TextStyle(
                                    fontSize: 35, color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                      Stack(
                        // alignment: Alignment.centerLeft,
                        children: [
                          Image(
                              image: AssetImage(
                                'assets/images/download.jpg',
                              ),
                              fit: BoxFit.contain),
                          Column(
                            children: [
                              Text(
                                'Agallio',
                                style: TextStyle(
                                    fontSize: 35, color: Colors.white),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              );
            }),
          ),
        ],
      ),
    );
  }
}

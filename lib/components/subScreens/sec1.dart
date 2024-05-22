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
      padding: EdgeInsets.all(10),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Featuring Today',
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
          SizedBox(
            height: 50,
          ),
          Container(),
        ],
      ),
    );
  }
}

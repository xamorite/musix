import 'package:flutter/material.dart';
import 'package:musix/components/subScreens/sec1.dart';
import 'package:musix/components/subScreens/sec2.dart';

// ignore: must_be_immutable
class Homesec extends StatefulWidget {
  const Homesec({super.key});

  @override
  State<Homesec> createState() => _HomesecState();
}

class _HomesecState extends State<Homesec> {
  List<String> items = ["For you", "Relax", "Workout", "Travel"];
  List<Widget> content = [
    const FeaturingToday(),
    const Relax(),
  ];


  int currentIndex = 1;

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(
          height: screenSize.height * 0.06,
          width: double.infinity,
          child: ListView.builder(
              physics: const BouncingScrollPhysics(),
              itemCount: items.length,
              scrollDirection: Axis.horizontal,
              itemBuilder: (cxt, index) {
                return GestureDetector(
                  onTap: () {
                    setState(() {
                      currentIndex = index;
                    });
                  },
                  child: AnimatedContainer(
                    duration: const Duration(milliseconds: 300),
                    margin: const EdgeInsets.all(5),
                    width: screenSize.width * 0.25,
                    height: 45,
                    decoration: BoxDecoration(
                      color: currentIndex == index
                          ? const Color.fromARGB(96, 54, 53, 53)
                          : Colors.black,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Center(
                      child: Text(
                        items[index],
                        style: TextStyle(
                            fontSize: 20.0,
                            color: currentIndex == index
                                ? Colors.white
                                : Colors.white54),
                      ),
                    ),
                  ),
                );
              }),
        ),
        Container(
          child: content[currentIndex],
        ),
      ],
    );
  }
}

import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Homesec extends StatefulWidget {
  Homesec({super.key});

  @override
  State<Homesec> createState() => _HomesecState();
}

class _HomesecState extends State<Homesec> {
  List<String> items = ["For you", "Relax", "Workout", "Travel"];

  int currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.all(5),
        width: double.infinity,
        height: double.infinity,
        child: Column(
          children: [
            SizedBox(
              height: 46,
              width: double.infinity,
              child: ListView.builder(
                  physics: BouncingScrollPhysics(),
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
                        duration: Duration(milliseconds: 300),
                        margin: EdgeInsets.all(5),
                        width: 80,
                        height: 45,
                        decoration: BoxDecoration(
                          color: currentIndex == index
                              ? Colors.black
                              : Color.fromARGB(96, 54, 53, 53),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: Center(
                          child: Text(
                            items[index],
                            style: TextStyle(
                                color: currentIndex == index
                                    ? Colors.white
                                    : Colors.white54),
                          ),
                        ),
                      ),
                    );
                  }),
            )
          ],
        ),
      ),
    );  
  }
}

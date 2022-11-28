import 'package:befit/screens/kneeToChest.dart';
import 'package:befit/screens/walking.dart';
import 'package:befit/screens/wallSquats.dart';
import 'package:flutter/material.dart';
import 'package:befit/screens/panel.dart';
import 'package:befit/screens/A1toA32ndweek.dart';

import 'package:befit/standards.dart';

class A1 extends StatefulWidget {
  const A1({Key? key}) : super(key: key);

  @override
  State<A1> createState() => _A1State();
}

class _A1State extends State<A1> {
  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;

    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Standards.colors["blackColor"],
          ),
          // TODO: Implement Back Button
          // Tapping Back Button will return to the ROUTES TESTER (temporary)
          onPressed: () {
            setState(
              () {
                Navigator.pop(context);
              },
            );
          },
        ),
        title: Text(
          'Recommendation',
          style: Standards.fontStyles["main"],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(32),
          child: SizedBox(
            child: Column(
              children: [
                // Header

                Container(
                  width: deviceWidth,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color(0xFF996BEF),
                        Color.fromARGB(255, 166, 36, 202),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 150,
                        height: 70,
                        alignment: Alignment.center,
                        child: Text(
                          'Exercises',
                          style: Standards.fontStyles["mainButtonWhite"],
                        ),
                      ),
                    ],
                  ),
                ),

                // Part 1

                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          width: 130,
                          height: 50,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Initial Week',
                            style: Standards.fontStyles["smallerMain"],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Container(
                          width: 230,
                          height: 50,
                          alignment: Alignment.centerLeft,
                          child: Text(
                            'Number of Exercises: 3',
                            style: Standards.fontStyles["smallerMain"],
                          ),
                        ),
                      ],
                    ),
                    Divider(
                        height: 18,
                        thickness: 5,
                        color: Standards.colors["primaryColorLight"]),
// Exercise 1
                    Container(
                      width: deviceWidth,
                      height: 150,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 252, 116, 190),
                            Color.fromARGB(255, 202, 36, 180),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 110,
                            height: 130,
                            child: Image(
                              image: AssetImage("assets/images/walking.jpg"),
                              height: 95,
                              width: 95,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: 115,
                            alignment: Alignment.center,
                            child: Text(
                              'Walking 5000 steps a day',
                              style: Standards.fontStyles["mainWhite"],
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 45,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 252, 116, 190),
                                  Color.fromARGB(255, 202, 36, 180),
                                ],
                                stops: [1.0, 1.0],
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Standards.colors["whiteColor"],
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => Walking(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(
                    height: 18,
                    thickness: 5,
                    color: Standards.colors["primaryColorLight"]),

                // Exercise 2
                Column(
                  children: [
                    Container(
                      width: deviceWidth,
                      height: 150,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 252, 116, 190),
                            Color.fromARGB(255, 202, 36, 180),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 110,
                            height: 130,
                            child: Image(
                              image:
                                  AssetImage("assets/images/kneetochest.jpg"),
                              height: 95,
                              width: 95,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: 115,
                            alignment: Alignment.center,
                            child: Text(
                              'Knee to chest Repeat exercise 3 times',
                              style: Standards.fontStyles["mainWhite"],
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 45,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 252, 116, 190),
                                  Color.fromARGB(255, 202, 36, 180),
                                ],
                                stops: [1.0, 1.0],
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Standards.colors["whiteColor"],
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => KneeToChest(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(
                    height: 18,
                    thickness: 5,
                    color: Standards.colors["primaryColorLight"]),
// Exercise 3
                Column(
                  children: [
                    Container(
                      width: deviceWidth,
                      height: 150,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 252, 116, 190),
                            Color.fromARGB(255, 202, 36, 180),
                          ],
                        ),
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 110,
                            height: 130,
                            child: Image(
                              image: AssetImage("assets/images/wallsquats.jpg"),
                              height: 95,
                              width: 95,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: 115,
                            alignment: Alignment.center,
                            child: Text(
                              'Wall squats Repeat exercise 10 times for 2 sets',
                              style: Standards.fontStyles["mainWhite"],
                            ),
                          ),
                          Container(
                            width: 50,
                            height: 45,
                            alignment: Alignment.center,
                            decoration: BoxDecoration(
                              gradient: const LinearGradient(
                                colors: [
                                  Color.fromARGB(255, 252, 116, 190),
                                  Color.fromARGB(255, 202, 36, 180),
                                ],
                                stops: [1.0, 1.0],
                              ),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: IconButton(
                              icon: Icon(
                                Icons.arrow_forward,
                                color: Standards.colors["whiteColor"],
                              ),
                              onPressed: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => WallSquats(),
                                  ),
                                );
                              },
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Divider(
                    height: 18,
                    thickness: 5,
                    color: Standards.colors["primaryColorLight"]),
                Container(
                  width: MediaQuery.of(context).size.width * 0.90,
                  margin: EdgeInsets.only(top: Standards.bounds["margin"]!),
                  // Rounded button
                  child: ElevatedButton(
                    // Rounded button
                    style: ElevatedButton.styleFrom(
                      primary: Standards.colors["primaryColorDark"],
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(
                            Standards.bounds["borderRadius"]!),
                      ),
                    ),
                    // Text with icon
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Next',
                          style: Standards.fontStyles["mainButtonWhite"],
                        ),
                        const VerticalDivider(
                          color: Colors.transparent,
                        ),
                        const Icon(Icons.arrow_forward_outlined,
                            color: Colors.white),
                      ],
                    ),
                    onPressed: () {
                      setState(
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => A1toA32nd(),
                            ),
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

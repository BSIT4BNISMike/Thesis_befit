import 'package:befit/screens/cobraPose.dart';
import 'package:befit/screens/kneeToChest.dart';
import 'package:befit/screens/prisonerSquats.dart';
import 'package:befit/screens/sideLunges.dart';
import 'package:befit/screens/superman.dart';
import 'package:befit/screens/tricepDips.dart';
import 'package:flutter/material.dart';
import 'package:befit/standards.dart';
import 'package:befit/screens/B1ToB33rdweek.dart';

class B1toB32nd extends StatefulWidget {
  @override
  State<B1toB32nd> createState() => _B1toB32ndState();
}

class _B1toB32ndState extends State<B1toB32nd> {
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
                            'After 2 Weeks',
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
                            'Number of Exercises: 6',
                            style: Standards.fontStyles["smallerMain"],
                          ),
                        ),
                      ],
                    ),
// Exercise 1
                    Divider(
                        height: 18,
                        thickness: 5,
                        color: Standards.colors["primaryColorLight"]),
                    Container(
                      width: deviceWidth,
                      height: 200,
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
                            height: 170,
                            child: Image(
                              image: AssetImage(
                                  "assets/images/prisonersquats.jpg"),
                              height: 95,
                              width: 95,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: 115,
                            alignment: Alignment.center,
                            child: Text(
                              'Prisoner squats repeat exercise 15 times for 3 sets',
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
                                    builder: (context) => PrisonerSquats(),
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
                              image: AssetImage("assets/images/superman.jpg"),
                              height: 95,
                              width: 95,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: 115,
                            alignment: Alignment.center,
                            child: Text(
                              'Superman repeat exercise 15 times for 3 sets',
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
                                    builder: (context) => Superman(),
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
                              image: AssetImage("assets/images/tricepdips.jpg"),
                              height: 95,
                              width: 95,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: 115,
                            alignment: Alignment.center,
                            child: Text(
                              'Triceps dips repeat 15 times for 3 sets',
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
                                    builder: (context) => TricepDips(),
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
                // Exercise 4
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
                              'Knee to chest repeat exercise 3 times',
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
                //
                //Exercise 5
                Divider(
                    height: 18,
                    thickness: 5,
                    color: Standards.colors["primaryColorLight"]),
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
                              image: AssetImage("assets/images/cobrapose.jpg"),
                              height: 95,
                              width: 95,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: 115,
                            alignment: Alignment.center,
                            child: Text(
                              'Cobra pose repeat exercise 3 times',
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
                                    builder: (context) => CobraPose(),
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
                // Exercise 6
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
                              image: AssetImage("assets/images/sidelunges.jpg"),
                              height: 95,
                              width: 95,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: 115,
                            alignment: Alignment.center,
                            child: Text(
                              'Side lunges repeat exercise 3 times',
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
                                    builder: (context) => SideLunges(),
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
                              builder: (context) => B1toB33rd(),
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
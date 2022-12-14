import 'package:befit/screens/BicycleCrunch.dart';
import 'package:befit/screens/cobraPose.dart';
import 'package:befit/screens/pushUps.dart';
import 'package:befit/screens/prisonerSquats.dart';
import 'package:befit/screens/superman.dart';
import 'package:flutter/material.dart';
import 'package:befit/standards.dart';
import 'package:befit/screens/E22ndweek.dart';

class A8 extends StatefulWidget {
  const A8({Key? key}) : super(key: key);

  @override
  State<A8> createState() => _A8State();
}

class _A8State extends State<A8> {
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
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            child: Column(
              children: [
                // Header
                Container(
                  width: deviceWidth,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 204, 144, 236),
                        Color.fromARGB(255, 153, 110, 180),
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
                            'Number of Exercises: 5',
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
                      height: 200,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 204, 144, 236),
                            Color.fromARGB(255, 153, 110, 180),
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
                              'Prisoners squats repeat exercise 15 times for 3 sets',
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
                              image:
                                  AssetImage("assets/images/bicyclecrunch.jpg"),
                              height: 95,
                              width: 95,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: 115,
                            alignment: Alignment.center,
                            child: Text(
                              'Bicycle crunch Repeat exercise 15 times for 3 sets',
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
                                  Color.fromARGB(255, 204, 144, 236),
                                  Color.fromARGB(255, 153, 110, 180),
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
                                    builder: (context) => BicycleCrunch(),
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
                            Color.fromARGB(255, 204, 144, 236),
                            Color.fromARGB(255, 153, 110, 180),
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
                              image: AssetImage("assets/images/pushups.jpg"),
                              height: 95,
                              width: 95,
                              fit: BoxFit.fill,
                            ),
                          ),
                          Container(
                            width: 115,
                            alignment: Alignment.center,
                            child: Text(
                              'Push ups repeat exercise 15 times for 3 sets',
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
                                    builder: (context) => PushUps(),
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
                                  Color.fromARGB(255, 204, 144, 236),
                                  Color.fromARGB(255, 153, 110, 180),
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
                // Exercise 5
                Column(
                  children: [
                    Container(
                      width: deviceWidth,
                      height: 150,
                      alignment: Alignment.bottomCenter,
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [
                            Color.fromARGB(255, 204, 144, 236),
                            Color.fromARGB(255, 153, 110, 180),
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
                              builder: (context) => E22ndweek(),
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

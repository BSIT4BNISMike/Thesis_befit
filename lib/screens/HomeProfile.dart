import 'package:befit/screens/A1ToA3.dart';
import 'package:befit/screens/login.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:befit/screens/panel.dart';
import 'package:befit/standards.dart';

class HomeA1 extends StatefulWidget {
  const HomeA1({Key? key}) : super(key: key);

  @override
  State<HomeA1> createState() => _HomeA1State();
}

class _HomeA1State extends State<HomeA1> {
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
          'Home',
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
                        width: 180,
                        height: 70,
                        alignment: Alignment.center,
                        child: Text(
                          'User Profile',
                          style: Standards.fontStyles["mainButtonWhite"],
                        ),
                      ),
                    ],
                  ),
                ),
                // Divider(
                //     height: 18,
                //     thickness: 5,
                //     color: Standards.colors["primaryColorLight"]),

                // Profile picture
                // Container(
                //   width: 200,
                //   height: 200,
                //   decoration: BoxDecoration(
                //     gradient: const LinearGradient(
                //       colors: [
                //         Color.fromARGB(255, 204, 144, 236),
                //         Color.fromARGB(255, 153, 110, 180),
                //       ],
                //     ),
                //     borderRadius: BorderRadius.circular(100),
                //   ),
                //   child: Row(
                //     mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //     children: [
                //       Container(
                //         width: 110,
                //         height: 80,
                //         alignment: Alignment.center,
                //         child: Text(
                //           'Profile Picture',
                //           style: Standards.fontStyles["mainButtonWhite"],
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                Divider(
                    height: 18,
                    thickness: 5,
                    color: Standards.colors["primaryColorLight"]),

                Column(
                  children: [
// Username
                    Container(
                      width: deviceWidth,
                      height: 70,
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
                          Container(
                            width: 150,
                            alignment: Alignment.center,
                            child: Text(
                              'Username""',
                              style: Standards.fontStyles["mainWhite"],
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

                // Dateofbirth
                Column(
                  children: [
                    Container(
                      width: deviceWidth,
                      height: 70,
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
                          Container(
                            width: 150,
                            alignment: Alignment.center,
                            child: Text(
                              'Date Of Birth""',
                              style: Standards.fontStyles["mainWhite"],
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
// Sex
                Column(
                  children: [
                    Container(
                      width: deviceWidth,
                      height: 70,
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
                          Container(
                            width: 150,
                            alignment: Alignment.center,
                            child: Text(
                              'Sex""',
                              style: Standards.fontStyles["mainWhite"],
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
                // bmi
                Column(
                  children: [
                    Container(
                      width: deviceWidth,
                      height: 70,
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
                          Container(
                            width: 150,
                            alignment: Alignment.center,
                            child: Text(
                              'BMI""',
                              style: Standards.fontStyles["mainWhite"],
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
                          'Exercises',
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
                              builder: (context) => A1(),
                            ),
                          );
                        },
                      );
                    },
                  ),
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
                          'Log Out',
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
                      FirebaseAuth.instance.signOut().then((value) {
                        print("Signed Out");
                        Navigator.push(context,
                            MaterialPageRoute(builder: (context) => Login()));
                      });
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

import 'package:befit/screens/BicycleCrunch.dart';
import 'package:befit/screens/cobraPose.dart';
import 'package:befit/screens/extension.dart';
import 'package:befit/screens/planks.dart';
import 'package:befit/screens/pushUps.dart';
import 'package:befit/screens/tricepDips.dart';
import 'package:befit/screens/kneeToChest.dart';
import 'package:befit/screens/prisonerSquats.dart';
import 'package:befit/screens/sideLunges.dart';
import 'package:befit/screens/superman.dart';
import 'package:flutter/material.dart';
import 'package:befit/standards.dart';
import 'package:befit/screens/login.dart';

class A7 extends StatefulWidget {
  const A7({Key? key}) : super(key: key);

  @override
  State<A7> createState() => _A7State();
}

class _A7State extends State<A7> {
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
            Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => Login(),
                ));
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
                    border: Border.all(color: Colors.black, width: 2),
                  ),
                  child: const Center(
                    child: Padding(
                      padding: EdgeInsets.all(15.0),
                      child: Text("Exercises"),
                    ),
                  ),
                ),
                // Part 1
                Column(
                  children: [
                    // Part 3 Header
                    const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text("Initial week"),
                    ),

                    const Text("Sets"),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 95,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PrisonerSquats()),
                                    );
                                  },
                                  child: const Image(
                                    image: AssetImage(
                                        "assets/images/prisonersquats.jpg"),
                                    height: 95,
                                    width: 95,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                // Item 1 Title
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("Prisonersquats"),
                                ),
                                // Item 1 Body
                                const Text("Repeat for"),
                                const Text("15 times"),
                                const Text("for 3 sets"),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 95,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              BicycleCrunch()),
                                    );
                                  },
                                  child: const Image(
                                    image: AssetImage(
                                        "assets/images/bicyclecrunch.jpg"),
                                    height: 95,
                                    width: 95,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                // Item 1 Title
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("Bicycle Crunch"),
                                ),
                                // Item 1 Body
                                const Text("Repeat 15"),
                                const Text("times for"),
                                const Text("3 sets"),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 95,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Superman()),
                                    );
                                  },
                                  child: const Image(
                                    image: AssetImage(
                                        "assets/images/superman.jpg"),
                                    height: 95,
                                    width: 95,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                // Item 1 Title
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("Superman"),
                                ),
                                // Item 1 Body
                                const Text("Repeat for"),
                                const Text("15 times"),
                                const Text("for 3 sets"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    // Part 1 Header
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 95,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => TricepDips()),
                                    );
                                  },
                                  child: const Image(
                                    image: AssetImage(
                                        "assets/images/tricepdips.jpg"),
                                    height: 95,
                                    width: 95,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                // Item 2 Title
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("Tricep Dips"),
                                ),
                                // Item 1 Body
                                const Text("Repeat for"),
                                const Text("15 times"),
                                const Text("for 3 sets"),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 95,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => KneeToChest()),
                                    );
                                  },
                                  child: const Image(
                                    image: AssetImage(
                                        "assets/images/kneetochest.jpg"),
                                    height: 95,
                                    width: 95,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("Knee to chest"),
                                ),
                                const Text("Repeat"),
                                const Text("exercise"),
                                const Text("3 times"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                // Part 2
                Column(
                  children: [
                    // Part 2 Header
                    const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text("After 2 weeks"),
                    ),
                    // Part 2 Body
                    const Text("Sets"),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 95,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PrisonerSquats()),
                                    );
                                  },
                                  child: const Image(
                                    image: AssetImage(
                                        "assets/images/prisonersquats.jpg"),
                                    height: 95,
                                    width: 95,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                // Item 1 Title
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("Prisonersquats"),
                                ),
                                // Item 1 Body
                                const Text("Repeat for"),
                                const Text("15 times"),
                                const Text("for 3 sets"),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 95,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              BicycleCrunch()),
                                    );
                                  },
                                  child: const Image(
                                    image: AssetImage(
                                        "assets/images/bicyclecrunch.jpg"),
                                    height: 95,
                                    width: 95,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                // Item 1 Title
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("Bicycle Crunch"),
                                ),
                                // Item 1 Body
                                const Text("Repeat 15"),
                                const Text("times for"),
                                const Text("3 sets"),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 95,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PushUps()),
                                    );
                                  },
                                  child: const Image(
                                    image:
                                        AssetImage("assets/images/pushups.jpg"),
                                    height: 95,
                                    width: 95,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                // Item 1 Title
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("Push Ups"),
                                ),
                                // Item 1 Body
                                const Text("Repeat for"),
                                const Text("15 times"),
                                const Text("for 3 sets"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    // Part 1 Header
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 95,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Extension()),
                                    );
                                  },
                                  child: const Image(
                                    image: AssetImage(
                                        "assets/images/extension.jpg"),
                                    height: 95,
                                    width: 95,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                // Item 1 Title
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("Extensions"),
                                ),
                                // Item 1 Body
                                const Text("Repeat for"),
                                const Text("15 times"),
                                const Text("for 3 sets"),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 95,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => KneeToChest()),
                                    );
                                  },
                                  child: const Image(
                                    image: AssetImage(
                                        "assets/images/kneetochest.jpg"),
                                    height: 95,
                                    width: 95,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("Knee to chest"),
                                ),
                                const Text("Repeat"),
                                const Text("exercise"),
                                const Text("3 times"),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 95,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => CobraPose()),
                                    );
                                  },
                                  child: const Image(
                                    image: AssetImage(
                                        "assets/images/cobrapose.jpg"),
                                    height: 95,
                                    width: 95,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                // Item 1 Title
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("Cobra Pose"),
                                ),
                                // Item 1 Body
                                const Text("Repeat"),
                                const Text("exercise"),
                                const Text("3 times"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    // Part 3 Header
                    const Padding(
                      padding: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text("After 3 weeks"),
                    ),
                    const Text("Sets"),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 95,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              PrisonerSquats()),
                                    );
                                  },
                                  child: const Image(
                                    image: AssetImage(
                                        "assets/images/prisonersquats.jpg"),
                                    height: 95,
                                    width: 95,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                // Item 1 Title
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("Prisonersquats"),
                                ),
                                // Item 1 Body
                                const Text("Repeat for"),
                                const Text("20 times"),
                                const Text("for 3 sets"),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 95,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => PushUps()),
                                    );
                                  },
                                  child: const Image(
                                    image:
                                        AssetImage("assets/images/pushups.jpg"),
                                    height: 95,
                                    width: 95,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                // Item 1 Title
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("Push Ups"),
                                ),
                                // Item 1 Body
                                const Text("Repeat for"),
                                const Text("20 times"),
                                const Text("for 3 sets"),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 95,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Extension()),
                                    );
                                  },
                                  child: const Image(
                                    image: AssetImage(
                                        "assets/images/extension.jpg"),
                                    height: 95,
                                    width: 95,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                // Item 1 Title
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("Extensions"),
                                ),
                                // Item 1 Body
                                const Text("Repeat for"),
                                const Text("20 times"),
                                const Text("for 3 sets"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                Column(
                  children: [
                    // Part 2 Header
                    Padding(
                      padding: const EdgeInsets.only(top: 20, bottom: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                            width: 95,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => KneeToChest()),
                                    );
                                  },
                                  child: const Image(
                                    image: AssetImage(
                                        "assets/images/kneetochest.jpg"),
                                    height: 95,
                                    width: 95,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("Knee to chest"),
                                ),
                                const Text("Repeat"),
                                const Text("exercise"),
                                const Text("3 times"),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 95,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SideLunges()),
                                    );
                                  },
                                  child: const Image(
                                    image: AssetImage(
                                        "assets/images/sidelunges.jpg"),
                                    height: 95,
                                    width: 95,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                // Item 1 Title
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("side lunges"),
                                ),
                                // Item 1 Body
                                const Text("Repeat for"),
                                const Text("20 times"),
                                const Text("for 3 set"),
                              ],
                            ),
                          ),
                          SizedBox(
                            width: 95,
                            child: Column(
                              children: [
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Planks()),
                                    );
                                  },
                                  child: const Image(
                                    image:
                                        AssetImage("assets/images/plank.jpg"),
                                    height: 95,
                                    width: 95,
                                    fit: BoxFit.fill,
                                  ),
                                ),
                                // Item 1 Title
                                const Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Text("Plank"),
                                ),
                                // Item 1 Body
                                const Text("Repeat"),
                                const Text("exercise"),
                                const Text("3 times"),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),

                SizedBox(
                  width: 95,
                  child: Column(
                    children: [
                      GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => BicycleCrunch()),
                          );
                        },
                        child: const Image(
                          image: AssetImage("assets/images/bicyclecrunch.jpg"),
                          height: 95,
                          width: 95,
                          fit: BoxFit.fill,
                        ),
                      ),
                      // Item 1 Title
                      const Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text("Bicycle Crunch"),
                      ),
                      // Item 1 Body
                      const Text("Repeat 20"),
                      const Text("times for"),
                      const Text("3 sets"),
                    ],
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

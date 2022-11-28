import 'package:flutter/material.dart';

import '../uploadFile.dart';

class WallSquats extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.deepPurple,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text(('EXERCISES')),
          centerTitle: true,
        ),
        body: Column(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text('Wall Squats',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: const Image(
                image: AssetImage("assets/images/wallsquats.jpg"),
                height: 200,
                width: 200,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              child: Text(
                  '- activates your core and strengthen your butt and thigh muscles'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                  '- Stand with feet shoulder-width apart and back flat against a wall.'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                  '- Lower into a sitting position by bending your knees at a 90-degree angle while keeping the lower back firmly against the wall.'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text('- Straighten back up and repeat.'),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                  'NOTE: Please be sure to record yourself doing this workout facing left and your left side part is seen in the camera.'),
            ),
          ],
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () async {
            await uploadFile();
          },
          child: Text('Upload'),
        ),
      ),
    );
  }
}

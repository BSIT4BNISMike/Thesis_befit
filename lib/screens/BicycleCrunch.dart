import 'dart:io';
import 'package:befit/uploadFile.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class BicycleCrunch extends StatelessWidget {
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
              padding: EdgeInsets.all(8.0),
              child: Text('Bicycle Crunch',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: const Image(
                image: AssetImage("assets/images/bicyclecrunch.jpg"),
                height: 200,
                width: 200,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: EdgeInsets.all(4.0),
              child: Text('- Lie on your back with knees bent.'),
            ),
            Container(
              padding: EdgeInsets.all(4.0),
              child: Text(
                  '- Feet should be on the floor and hands behind the head.'),
            ),
            Container(
              padding: EdgeInsets.all(4.0),
              child: Text(
                  '- Contract and maintain your abdominal muscles (abs) while doing the exercise.'),
            ),
            Container(
              padding: EdgeInsets.all(4.0),
              child: Text(
                  '- Go through a bicycle pedal motion by slowly raising your knees, lifting your feet from the floor.'),
            ),
            Container(
              padding: EdgeInsets.all(4.0),
              child: Text(
                  '- Rotate your upper body so you touch your elbow to the opposite knee as it comes up.'),
            ),
            Container(
              padding: EdgeInsets.all(4.0),
              child: Text('- Alternate to twist to the other side'),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'NOTE: Please be sure to record yourself doing this workout facing up and your Left side part is seen in the camera.'),
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

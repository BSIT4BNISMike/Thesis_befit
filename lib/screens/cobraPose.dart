import 'dart:io';
import 'package:befit/uploadFile.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class CobraPose extends StatelessWidget {
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
              child: Text('Cobra Pose',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: const Image(
                image: AssetImage("assets/images/cobrapose.jpg"),
                height: 200,
                width: 200,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                  '-	Lie face down on your mat with your entire body extended.'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                  '-	Bring your hands palms facing down directly underneath your shoulder blades and prepare to lift your upper body and head.'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                  '-	Press through the hands to lift the upper body into cobra pose without moving the lower body.'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text('-	Hold this position for 30 counts.'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text('-	Slowly lower down to the ground and repeat.'),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                  'NOTE: Please be sure to record yourself doing this workout with your left side part is seen in the camera.'),
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

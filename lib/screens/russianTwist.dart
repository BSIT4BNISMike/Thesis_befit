import 'dart:io';
import 'package:befit/uploadFile.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class RussianTwist extends StatelessWidget {
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
              child: Text('Russian Twist',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: const Image(
                image: AssetImage("assets/images/russiantwist.jpg"),
                height: 200,
                width: 200,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                  '-	Sit down on the floor or on a mat, keeping your feet on the ground.'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text('-	Slightly lean back and extend your arms forward.'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                  '-	Lift your feet an inch from the ground and maintain that position as you rotate your torso, moving the arms from one side to the other.'),
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

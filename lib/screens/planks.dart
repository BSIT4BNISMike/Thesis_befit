import 'dart:io';
import 'package:befit/uploadFile.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class Planks extends StatelessWidget {
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
              child: Text('Plank',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: const Image(
                image: AssetImage("assets/images/plank.jpg"),
                height: 200,
                width: 200,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                  '-	Lie on the floor and place your forearms directly under your shoulders.'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                  '-	With your feet together, slowly lift your torso off the floor by pressing into your forearms and knees. Contract your core as you lift your torso.'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child:
                  Text('-	Hold this position as tolerated or as prescribed.'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                  '-	Don’t hold your breath while maintaining the position.'),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                  'NOTE: Please be sure to record yourself doing this workout facing down and left side part is seen in the camera.'),
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

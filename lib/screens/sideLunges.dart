import 'dart:io';
import 'package:befit/uploadFile.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class SideLunges extends StatelessWidget {
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
              child: Text('Side Lunges',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: const Image(
                image: AssetImage("assets/images/sidelunges.jpg"),
                height: 200,
                width: 200,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: EdgeInsets.all(4.0),
              child: Text(
                  '-	Stand with your feet shoulder-width apart and parallel to each other.'),
            ),
            Container(
              padding: EdgeInsets.all(4.0),
              child: Text(
                  '-	Step to the side your right foot as wide as possible.'),
            ),
            Container(
              padding: EdgeInsets.all(4.0),
              child: Text(
                  '-	Drop your hips down and back to the right foot while keeping the left leg straight, feet flat on the ground and still parallel to each other.'),
            ),
            Container(
              padding: EdgeInsets.all(4.0),
              child: Text(
                  '-	This will stretch your groin muscles left. Hold this position for 30 counts.'),
            ),
            Container(
              padding: EdgeInsets.all(4.0),
              child: Text(
                  '-	Move back into standing position and repeat on the other side.'),
            ),
            Container(
              padding: EdgeInsets.all(8.0),
              child: Text(
                  'NOTE: Please be sure to record yourself doing this workout while facing front.'),
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

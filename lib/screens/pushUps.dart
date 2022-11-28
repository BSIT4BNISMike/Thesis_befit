import 'dart:io';
import 'package:befit/uploadFile.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class PushUps extends StatelessWidget {
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
              child: Text('Push Ups',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              padding: EdgeInsets.all(30.0),
              child: const Image(
                image: AssetImage("assets/images/pushups.jpg"),
                height: 200,
                width: 200,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                  '-	get on the floor on all fours with hands slightly wider than your shoulders and feet hip-width apart.'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text('-	Contract your abs and tighten your core.'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child:
                  Text('-	bend your elbows and lower yourself to the floor.'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                  '-	Push back up through your hands, returning to the start position.'),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                  'NOTE: Please be sure to record yourself doing this workout facing down and your left side part is seen in the camera.'),
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

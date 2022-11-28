import 'dart:io';
import 'package:befit/uploadFile.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class KneeToChest extends StatefulWidget {
  @override
  State<KneeToChest> createState() => _KneeToChestState();
}

class _KneeToChestState extends State<KneeToChest> {
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
              child: Text('Knee to Chest',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: const Image(
                image: AssetImage("assets/images/kneetochest.jpg"),
                height: 200,
                width: 200,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                  '-	Lie on your back with your legs extended and back straight.'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text('-	Lift your knees towards your chest'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                  '-	Place hands on the back of the knee, pulling the thighs closer to the body. '),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text('-	Hold this position for 30 counts.'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                  '-	Relax and lower your legs to starting position and repeat.'),
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

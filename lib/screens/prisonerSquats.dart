import 'dart:io';
import 'package:befit/uploadFile.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';

class PrisonerSquats extends StatelessWidget {
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
              child: Text('Prisoner Squats',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: const Image(
                image: AssetImage("assets/images/prisonersquats.jpg"),
                height: 200,
                width: 200,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              child: Text(
                  '-activates your core and strengthen your butt and thigh muscles'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text('- Stand with legs apart and feet parallel.'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text(
                  '- Lift up arms and place both of hands behind the head (prisoner position).'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child:
                  Text('- Bend from hips and bend knees to a squat position.'),
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

import 'dart:io';
import 'package:befit/uploadFile.dart';
import 'package:file_picker/file_picker.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/material.dart';
import 'package:befit/standards.dart';

class PrisonerSquats extends StatefulWidget {
  @override
  State<PrisonerSquats> createState() => _PrisonerSquatsState();
}

class _PrisonerSquatsState extends State<PrisonerSquats> {
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
            setState(
              () {
                Navigator.pop(context);
              },
            );
          },
        ),
        title: Text(
          'Exercise',
          style: Standards.fontStyles["main"],
        ),
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Padding(
          padding: const EdgeInsets.all(15),
          child: SizedBox(
            child: Column(
              children: [
                //header
                Container(
                  width: deviceWidth,
                  decoration: BoxDecoration(
                    gradient: const LinearGradient(
                      colors: [
                        Color.fromARGB(255, 204, 144, 236),
                        Color.fromARGB(255, 153, 110, 180),
                      ],
                    ),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Container(
                        width: 300,
                        height: 50,
                        alignment: Alignment.center,
                        child: Text(
                          'Prisoner Squats',
                          style: Standards.fontStyles["mainButtonWhite"],
                        ),
                      ),
                    ],
                  ),
                ),

                Column(
                  children: [
                    Row(
                      children: [
                        Container(
                          height: 300,
                          width: 330,
                          child: Image(
                            image: NetworkImage(
                              'https://twentyfourlife.wpenginepowered.com/wp-content/uploads/2020/01/Prisoner-Squat-1.gif',
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            'NOTE: Please be sure to record yourself doing this workout with your left side part is seen in the camera.',
                            style: Standards.fontStyles["subtitle"],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '',
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '-	Stand with legs apart and feet parallel',
                            style: Standards.fontStyles["subtitle"],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '-	Lift up arms and place both of hands behind the head (prisoner position).',
                            style: Standards.fontStyles["subtitle"],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '-	Bend from hips and bend knees to a squat position.',
                            style: Standards.fontStyles["subtitle"],
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: Text(
                            '-	Straighten back up and repeat.',
                            style: Standards.fontStyles["subtitle"],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),

                Row(
                  children: [
                    Container(
                      width: 145,
                      height: 50,
                      margin: EdgeInsets.all(Standards.bounds["minimargin"]!),
                      // Rounded button
                      child: ElevatedButton(
                        // Rounded button
                        style: ElevatedButton.styleFrom(
                          primary: Standards.colors["primaryColorDark"],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                Standards.bounds["borderRadius"]!),
                          ),
                        ),
                        // Text with icon
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Feedback',
                              style: Standards.fontStyles["miniWhite"],
                            ),
                          ],
                        ),
                        onPressed: () async {},
                      ),
                    ),
                    Container(
                      width: 145,
                      height: 50,
                      margin: EdgeInsets.all(Standards.bounds["minimargin"]!),
                      // Rounded button
                      child: ElevatedButton(
                        // Rounded button
                        style: ElevatedButton.styleFrom(
                          primary: Standards.colors["primaryColorDark"],
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(
                                Standards.bounds["borderRadius"]!),
                          ),
                        ),
                        // Text with icon
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              'Upload',
                              style: Standards.fontStyles["miniWhite"],
                            ),
                          ],
                        ),
                        onPressed: () async {
                          await uploadFile();
                        },
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
      // floatingActionButton: FloatingActionButton(
      //   onPressed: () async {
      //     await uploadFile();
      //   },
      //   child: Text('Upload'),
      // ),
    );
  }
}

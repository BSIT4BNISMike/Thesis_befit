import 'package:flutter/material.dart';

import '../uploadFile.dart';

class Walking extends StatelessWidget {
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
              child: Text('Walking',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  )),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: const Image(
                image: AssetImage("assets/images/walking.jpg"),
                height: 200,
                width: 200,
                fit: BoxFit.fill,
              ),
            ),
            Container(
              padding: EdgeInsets.all(10.0),
              child: Text(
                  '- Improve cardiovascular firness and Strengthen your bones and muscles.'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text('- Improve muscle endurance.'),
            ),
            Container(
              padding: EdgeInsets.all(5.0),
              child: Text('- increase energy levels.'),
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

import 'package:flutter/material.dart';
import 'dart:math';

void main() => runApp(
      MaterialApp(
        home: Scaffold(
          appBar: AppBar(
            title: Text('Ask Me Anything'),
            backgroundColor: Colors.blue[900],
          ),
          body: MagicApp(),
        ),
      ),
    );

class MagicApp extends StatefulWidget {
  @override
  _MagicAppState createState() => _MagicAppState();
}

class _MagicAppState extends State<MagicApp> {
  int number = Random().nextInt(5) + 1;
  void ran() {
    number = Random().nextInt(5) + 1;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      // width: ,
      child: Column(
        children: [
          Expanded(
            // To make an image as a button we first use a FlatButton and give it an image as a child.
            child: FlatButton(
              onPressed: () {
                // the changes present within are changed
                setState(() {
                  print('Yes Pressed');
                  ran();
                });
              },
              child: Image.asset(
                'images/ball$number.png',
                alignment: Alignment.center,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

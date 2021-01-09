import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        // 'SafeArea' - This is used to put the content away from signal bar and notch area in diff phones.
        body: SafeArea(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: 100,
                color: Colors.red,
                // child: Text('Container 1'),
              ),
              // It adds the space between different children.
              SizedBox(
                width: 30,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.yellow,
                    // child: Text('Container 2'),
                  ),
                  Container(
                    height: 100,
                    width: 100,
                    color: Colors.green,
                    // child: Text('Container 3'),
                  ),
                ],
              ),
              SizedBox(
                width: 30,
              ),
              Container(
                width: 100,
                color: Colors.blue,
                // child: Text('Container 4'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

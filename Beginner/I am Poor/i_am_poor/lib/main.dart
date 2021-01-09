import 'package:flutter/material.dart';

// 'main()' is necessary as it is the starting point of a program.
void main() {
  // essential for running the app
  runApp(PoorApp());
}

class PoorApp extends StatelessWidget {
  // essential for hot reload
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          elevation: 30.0,
          backgroundColor: Colors.amber[600],
          title: Center(
            child: Text('I am Poor App'),
          ),
        ),
        body: Container(
          color: Colors.grey[600],
          child: Center(
            child: Image(
              image: AssetImage('Images/rock_for_poor.jpg'),
            ),
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';

// This is the function where the program starts.
void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
          appBar: AppBar(
            title: Center(
              child: Text('I am Rich'),
            ),
            backgroundColor: Colors.blueGrey[900],
          ),
          backgroundColor: Colors.blueGrey,
          body: Center(
            child: Image(
              image: AssetImage('Images/diamond.png'),
              // image: NetworkImage(
              // 'https://cdn.cultofmac.com/wp-content/uploads/2008/08/post-2486-image-47d51b6614a63bf14fb79e4151becdd9.jpg'),)
            ),
          )),
    ),
  );
}

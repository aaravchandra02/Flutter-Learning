import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          centerTitle: true,
          title: Text(
            'Dice',
            style: TextStyle(
              color: Colors.white,
              fontSize: 50.0,
              fontWeight: FontWeight.bold,
              fontFamily: 'Sacramento',
            ),
          ),
          backgroundColor: Colors.red,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            // flex property is used here to make this child twice than the other one.
            // flex: 2,
            child: FlatButton(
              // we provide this an anonymous function.
              onPressed: () {
                print('Touched left button');
              },
              child: Image.asset('images/dice3.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: () {
                print('Touched right button');
              },
              child: Image(
                // to make the image adaptable we use 'Expanded' widget
                image: AssetImage('images/dice1.png'),
              ),
            ),
          )
        ],
      ),
    );
  }
}

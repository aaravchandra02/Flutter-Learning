import 'package:flutter/material.dart';
import 'dart:math';

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

class DicePage extends StatefulWidget {
  @override
  _DicePageState createState() => _DicePageState();
}

// This is the 'state' part of a stateful widget
class _DicePageState extends State<DicePage> {
  final random = new Random();
  int leftDiceNumber = 1;
  int rightDiceNumber = 1;
  @override
  Widget build(BuildContext context) {
    // Randommly generating the dice numbers.

    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Row(
            children: [
              Expanded(
                // flex property is used here to make this child twice than the other one.
                // flex: 2,
                child: FlatButton(
                  // we provide this an anonymous function.
                  onPressed: () {
                    // now we need to call the setState() - it tells that the state has been changed
                    setState(() {
                      print('Touched left button');
                      leftDiceNumber = random.nextInt(6) + 1;
                      print('$leftDiceNumber');
                    });
                  },
                  // This $ is string interpolation
                  child: Image.asset('images/dice$leftDiceNumber.png'),
                ),
              ),
              Expanded(
                child: FlatButton(
                  // it expects an "onPressed" which must have void callback function.
                  onPressed: () {
                    setState(() {
                      print('Touched right button');
                      rightDiceNumber = random.nextInt(6) + 1;
                    });
                  },
                  child: Image(
                    // to make the image adaptable we use 'Expanded' widget
                    image: AssetImage('images/dice$rightDiceNumber.png'),
                  ),
                ),
              ),
            ],
          ),
          SizedBox(
            width: 200.0,
            height: 50.0,
          ),
          Column(
            children: [
              RaisedButton(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(70.0),
                ),
                color: Colors.white,
                elevation: 30.0,
                padding: EdgeInsets.all(25.0),
                child: Text(
                  'Roll both dices',
                  style: TextStyle(
                    color: Colors.red,
                    fontSize: 20.0,
                    fontFamily: 'Source Sans Pro',
                  ),
                ),
                onPressed: () {
                  setState(() {
                    print('rolling both dices');
                    leftDiceNumber = random.nextInt(6) + 1;
                    rightDiceNumber = random.nextInt(6) + 1;
                  });
                },
              ),
            ],
          ),
        ],
      ),
    );
  }
}

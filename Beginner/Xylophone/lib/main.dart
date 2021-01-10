import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  int n = 0;
  void sound(number) {
    player.play('note$number.wav');
  }

  //created it to reduce the redundancy of the code
  Widget buildKey(thisColor) {
    // We use expanded to fill each button vertically.
    return Expanded(
      child: FlatButton(
        color: thisColor,
        onPressed: () {
          sound(1);
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    // Loaded it before to prevent delay.
    player.loadAll([
      'note1.wav',
      'note2.wav',
      'note3.wav',
      'note4.wav',
      'note5.wav',
      'note6.wav',
      'note7.wav'
    ]);
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            // To make it strecth horizontally, we use the 'crossAxisAlignment'
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buildKey(Colors.deepPurple),
              buildKey(Colors.blue[900]),
              buildKey(Colors.lightBlue),
              buildKey(Colors.green),
              buildKey(Colors.yellow),
              buildKey(Colors.orange),
              buildKey(Colors.red),
            ],
          ),
        ),
      ),
    );
  }
}

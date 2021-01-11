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
  Expanded buildKey(Color thisColor, int soundNumber) {
    // We use expanded to fill each button vertically.
    return Expanded(
      child: FlatButton(
        color: thisColor,
        onPressed: () {
          sound(soundNumber);
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
              buildKey(Colors.deepPurple, 1),
              buildKey(Colors.blue[900], 2),
              buildKey(Colors.lightBlue, 3),
              buildKey(Colors.green, 4),
              buildKey(Colors.yellow, 5),
              buildKey(Colors.orange, 6),
              buildKey(Colors.red, 7),
            ],
          ),
        ),
      ),
    );
  }
}

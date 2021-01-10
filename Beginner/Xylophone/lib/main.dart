import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final player = AudioCache();
  int n = 0;
  void sound(number) {
    player.play('note$number.wav');
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
              // We use expanded to fill each button vertically.
              Expanded(
                child: FlatButton(
                  color: Colors.deepPurple,
                  onPressed: () {
                    sound(1);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.blue[900],
                  onPressed: () {
                    sound(2);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.lightBlue,
                  onPressed: () {
                    sound(3);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.green,
                  onPressed: () {
                    sound(4);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.yellow,
                  onPressed: () {
                    sound(5);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.orange,
                  onPressed: () {
                    sound(6);
                  },
                ),
              ),
              Expanded(
                child: FlatButton(
                  color: Colors.red,
                  onPressed: () {
                    sound(7);
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  return runApp(XylophoneApp());
}

class XylophoneApp extends StatelessWidget {
  void playSound(int num) {
    final player = AudioCache();
    player.play('note$num.wav');
  }

  Expanded buttonKey({
    Color color,
    int num,
  }) {
    return Expanded(
      child: FlatButton(
        color: color,
        onPressed: () {
          playSound(num);
        },
        child: Text(''),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              buttonKey(color: Colors.red, num: 1),
              buttonKey(color: Colors.orange, num: 2),
              buttonKey(color: Colors.yellow, num: 3),
              buttonKey(color: Colors.green, num: 4),
              buttonKey(color: Colors.teal, num: 5),
              buttonKey(color: Colors.blue, num: 6),
              buttonKey(color: Colors.purple, num: 7),
            ],
          ),
        ),
      ),
    );
  }
}

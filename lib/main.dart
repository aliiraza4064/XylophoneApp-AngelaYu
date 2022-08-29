import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  void playSound(int soundNum) {
    final player = AudioCache();
    player.play("note$soundNum.wav");
  }

  Expanded buildkey({Color color, int soundNumber}) {
    return Expanded(
      child: InkWell(
        onTap: () {
          playSound(soundNumber);
        },
        child: Container(
          //height: 20.0,
          color: color,
        ),
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
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildkey(color: Colors.red, soundNumber: 1),
              buildkey(color: Colors.orange, soundNumber: 2),
              buildkey(color: Colors.yellow, soundNumber: 3),
              buildkey(color: Colors.green, soundNumber: 4),
              buildkey(color: Colors.teal, soundNumber: 5),
              buildkey(color: Colors.blue, soundNumber: 6),
              buildkey(color: Colors.purple, soundNumber: 7),
            ],
          ),
        ),
      ),
    );
  }
}

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

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(
                child: InkWell(
                  onTap: () {
                    playSound(1);
                  },
                  child: Container(
                    height: 20.0,
                    color: Colors.red,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    playSound(2);
                  },
                  child: Container(
                    height: 20.0,
                    color: Colors.orange,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    playSound(3);
                  },
                  child: Container(
                    height: 20.0,
                    color: Colors.yellow,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    playSound(4);
                  },
                  child: Container(
                    height: 20.0,
                    color: Colors.teal,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    playSound(5);
                  },
                  child: Container(
                    height: 20.0,
                    color: Colors.blue,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    playSound(6);
                  },
                  child: Container(
                    height: 20.0,
                    color: Colors.purple,
                  ),
                ),
              ),
              Expanded(
                child: InkWell(
                  onTap: () {
                    playSound(7);
                  },
                  child: Container(
                    height: 20.0,
                    color: Colors.green,
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

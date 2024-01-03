import 'package:flutter/material.dart';
import 'package:audioplayers/audioplayers.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatefulWidget {
  @override
  State<XylophoneApp> createState() => _XylophoneAppState();
}

class _XylophoneAppState extends State<XylophoneApp> {
  void lunchAudio(int audioNum) {
    final player = AudioPlayer();
    player.play(AssetSource('note$audioNum.wav'));
  }

  Expanded buildButton(Color color, int num) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          setState(() {
            lunchAudio(num);
          });
        },
        child: Container(
          height: 80,
          color: color,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              buildButton(Colors.teal[100]!, 1),
              buildButton(Colors.teal[200]!, 2),
              buildButton(Colors.teal[300]!, 3),
              buildButton(Colors.teal[400]!, 4),
              buildButton(Colors.teal[500]!, 5),
              buildButton(Colors.teal[600]!, 6),
              buildButton(Colors.teal[700]!, 7),
            ],
          ),
        ),
      ),
    );
  }
}

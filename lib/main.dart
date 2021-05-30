import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';
void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  void playSound(int playNum){
    final player = AudioCache();
    player.play('note$playNum.wav');
  }
  Expanded buildKey(Color colour, int playNum){
    return
        Expanded(
          child: TextButton(
            onPressed: (){
              playSound(playNum);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(colour),
            ),
          ),
        );
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        backgroundColor: Colors.black,
        appBar: AppBar(
          backgroundColor: Colors.grey[400],
          title: Center(
              child: Text("Xylophone App",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24.0,
              ),
              ),
          ),
        ),
        body: SafeArea(
          child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisSize: MainAxisSize.max,
            children: [
              buildKey(Colors.red, 1),
              buildKey(Colors.orange,2),
              buildKey(Colors.yellow,3),
              buildKey(Colors.green,4),
              buildKey(Colors.teal,5),
              buildKey(Colors.blue,6),
              buildKey(Colors.purple,7),
            ],
            ),
          ),
        ),
      );
  }
}

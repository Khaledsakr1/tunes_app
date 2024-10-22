import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(tunes());
}

class tunes extends StatelessWidget {
  const tunes({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.blueGrey[900],
          title: Center(
              child: Text(
            'Flutter App',
            style: TextStyle(color: Colors.white),
          )),
        ),
        body: Column(
        children: 
        [
          items(
            color: Colors.red,
            sound: 'sounds/note1.wav',
          ),
          items(
            color: Colors.orange,
            sound: 'sounds/note2.wav',
          ),
          items(
            color: Colors.yellow,
            sound: 'sounds/note3.wav',
          ),
          items(
            color: Colors.green,
            sound: 'sounds/note4.wav',
          ),
          items(
            color: Colors.teal,
            sound: 'sounds/note5.wav',
          ),
          items(
            color: Colors.blue,
            sound: 'sounds/note6.wav',
          ),
          items(
            color: Colors.purple,
            sound: 'sounds/note7.wav',
          ),
        
        
        
        ],),
      ),
    );
  }
}

// ignore: must_be_immutable
  class items extends StatelessWidget {
  items({this.color , this.sound});
  Color? color;
  String? sound;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GestureDetector(
        onTap: ()
        {
          final player = AudioPlayer();
                player.play(AssetSource(sound!));
        },
        child: Container(
          color: color,
          width: double.infinity,
        ),
      ),
    );
  }
}

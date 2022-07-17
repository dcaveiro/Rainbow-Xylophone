import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const Rainbow());
}

class Rainbow extends StatelessWidget {

  const Rainbow({Key? key}) : super(key: key);

  Future<void> playButton(int number) async {
    AudioPlayer audioplayer = AudioPlayer();
    await audioplayer.play(AssetSource('note$number.wav'));
  }

  Expanded buttonCode(int number, Color color) {
    return Expanded(
      child: TextButton(
        onPressed: () {
          playButton(number);
        },
        style: ButtonStyle(backgroundColor: MaterialStateColor.resolveWith((states) => color)),
        child: Container(),
      ),
    );
  }

  Divider verticalDivider() {
    return const Divider(height: 2,);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              buttonCode(1, Colors.purple.shade700),
              verticalDivider(),
              buttonCode(2, Colors.indigo),
              verticalDivider(),
              buttonCode(3, Colors.green),
              verticalDivider(),
              buttonCode(4, Colors.blue),
              verticalDivider(),
              buttonCode(5, Colors.yellow),
              verticalDivider(),
              buttonCode(6, Colors.orange),
              verticalDivider(),
              buttonCode(7, Colors.red)
            ],
          ),
        ),
      ),
    );
  }
}
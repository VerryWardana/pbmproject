import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_application_1/stage.dart';

class tampilangame extends StatelessWidget {
  const tampilangame({Key? key}) : super(key: key);

  void playAudio() async {
    AudioCache audioCache = AudioCache();
    const audioPath = "assets/music/music/videoplayback.mp3"; 
    audioCache.play(audioPath);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/gamelogo.png',
              width: 173,
              height: 173,
              fit: BoxFit.cover,
              alignment: Alignment.topCenter,
            ),
            SizedBox(height: 40),
            ElevatedButton(
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => stagegame()),
                    );
                  },
              style: ElevatedButton.styleFrom(
                backgroundColor: const Color(0xFF00E6AB),
                minimumSize: Size(209, 61),
              ),
              child: const Text(
                'Mulai',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

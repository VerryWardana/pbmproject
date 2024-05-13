import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

class tampilangame extends StatelessWidget {
  const tampilangame({Key? key}) : super(key: key);

  void playAudio() async {
    AudioCache audioCache = AudioCache();
    const audioPath = "assets/music/music/videoplayback.mp3"; // Ganti dengan path audio Anda
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
                print('button klik');
                playAudio(); // Panggil metode playAudio saat tombol diklik
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

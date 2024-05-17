import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Game extends StatefulWidget {
  const Game({Key? key}) : super(key: key);

  @override
  _GameState createState() => _GameState();
}

class _GameState extends State<Game> {
  bool _answerSelected = false;
  int _correctAnswerIndex = 1; 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.only(top: 90.0),
              child: Text(
                'Pilih Jawaban Yang Benar',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 110),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0),
              child: Text(
                'Apakah kamu di cabuli',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 15,
                ),
                textAlign: TextAlign.center,
              ),
            ),
            SizedBox(height: 140),
            Container(
              width: 250,
              height: 1.0,
              color: Colors.white,
            ),
            SizedBox(height: 30),
            if (!_answerSelected || _correctAnswerIndex == 0)
              _buildAnswerButton(0, 'Soekarno'),
            SizedBox(height: 20),
            if (!_answerSelected || _correctAnswerIndex == 1)
              _buildAnswerButton(1, 'Soekarno'),
            SizedBox(height: 20),
            if (!_answerSelected || _correctAnswerIndex == 2)
              _buildAnswerButton(2, 'Soekarno'),
          ],
        ),
      ),
    );
  }

  Widget _buildAnswerButton(int index, String text) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          _answerSelected = true;
        });
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: Color(0xFF00E6AB),
        minimumSize: Size(380, 80),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
        ),
      ),
      child: Text(
        text,
        style: TextStyle(
          fontSize: 16,
        ),
      ),
    );
  }
}


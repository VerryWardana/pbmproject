import 'dart:async';
import 'package:flutter/material.dart';

import 'login.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({super.key});

  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  double _opacity = 0.0;

  @override
  void initState() {
    super.initState();
    Timer(const Duration(seconds: 5), () {
      Navigator.of(context).pushReplacement(
        MaterialPageRoute(builder: (_) => const login()),
      );
    });

    Future.delayed(const Duration(seconds: 3), () {
      setState(() {
        _opacity = 1.0;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF3D8C5),
      body: Stack(
        alignment: Alignment.center,
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Image.asset(
              'assets/images/lingkaran1.png',
              fit: BoxFit.scaleDown,
              alignment: Alignment.topLeft,
            ),
          ),
          Positioned(
            top: 140,
            child: Stack(
              alignment: Alignment.topCenter,
              children: [
                AnimatedOpacity(
                  opacity: _opacity,
                  duration: const Duration(seconds: 800),
                  child: Image.asset(
                    'assets/images/judul.png',
                    fit: BoxFit.scaleDown,
                    alignment: Alignment.topCenter,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 80),
                  child: AnimatedOpacity(
                    opacity: _opacity,
                    duration: const Duration(seconds: 1),
                    child: const Text(
                      '“Berani Berdiri, Berani Melawan”',
                      style: TextStyle(
                        color: Color(0xFFFF5146),
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            top: 250,
            right: 0,
            child: Image.asset(
              'assets/images/lingkaran2.png',
              fit: BoxFit.scaleDown,
              alignment: Alignment.bottomRight,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Image.asset(
              'assets/images/lingkaranbesar.png',
              fit: BoxFit.scaleDown,
              alignment: Alignment.bottomCenter,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Image.asset(
              'assets/images/orang.png',
              fit: BoxFit.scaleDown,
              alignment: Alignment.bottomCenter,
            ),
          ),
          Positioned(
            bottom: 0,
            child: Image.asset(
              'assets/images/bawah.png',
              fit: BoxFit.scaleDown,
              alignment: Alignment.bottomCenter,
            ),
          ),
        ],
      ),
    );
  }
}

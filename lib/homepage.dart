import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_application_1/formaduan.dart';
import 'package:flutter_application_1/tampilangame.dart';

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle.dark);

    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 40),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Verry Wardana',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  CircleAvatar(
                    radius: 25,
                    backgroundImage: AssetImage('assets/images/saya.JPG'),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    'assets/images/mask.png',
                  ),
                ),
                const Positioned(
                  top: 30,
                  left: 35,
                  child: Text(
                    'Mengalami pelecehan?',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
                const Positioned(
                  top: 55,
                  left: 35,
                  child: Text(
                    'Klik tanda + untuk melapor',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12,
                      fontWeight: FontWeight.normal,
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  right: 50,
                  child: GestureDetector(
                    onTap: () {},
                    child: Container(
                      width: 50.0,
                      height: 50.0,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Color(0xFFE87C5F),
                      ),
                      child: IconButton(
                        icon: const Icon(Icons.add, color: Colors.white, size: 35,),
                        onPressed: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => const FormAduan()),
                          );
                        },
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Butuh Teman Curhat',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 20),
            const SingleChildScrollView(
              scrollDirection: Axis.horizontal,
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/saya.JPG'),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'Dr.Verry',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/saya.JPG'),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'fasjfhbajfhjfna',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/saya.JPG'),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'fasjfhbajfhjfna',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/saya.JPG'),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'fasjfhbajfhjfna',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/saya.JPG'),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'fasjfhbajfhjfna',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/saya.JPG'),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'fasjfhbajfhjfna',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/saya.JPG'),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'fasjfhbajfhjfna',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                  SizedBox(width: 10),
                  Column(
                    children: [
                      CircleAvatar(
                        radius: 35,
                        backgroundImage: AssetImage('assets/images/saya.JPG'),
                      ),
                      SizedBox(height: 5),
                      Text(
                        'fasjfhbajfhjfna',
                        style: TextStyle(fontSize: 12),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Ingin Hiburan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(15.0),
                  child: Image.asset(
                    'assets/images/mask2.png',
                  ),
                ),
                Positioned(
                  right: 10,
                  bottom: 15,
                  child: Image.asset(
                    'assets/images/animasi.png',
                  ),
                ),
                Positioned(
                  left: 30,
                  top: 130,
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => const tampilangame()),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFE87C5F),
                    ),
                    child: const Text(
                      'ayo main',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Riwayat Laporan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 380,
                height: 53,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFE87C5F),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/icons.png',
                        width: 35,
                        height: 35,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'nasigoreng',
                        style: TextStyle(
                            color: Color(0xFFE87C5F),
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 160,
                      ),
                      const Text(
                        '12 Juli 2003',
                        style: TextStyle(
                          color: Color(0xFFE87C5F),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 380,
                height: 53,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: const Color(0xFFE87C5F),
                  ),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset(
                        'assets/images/icons.png',
                        width: 35,
                        height: 35,
                        fit: BoxFit.cover,
                      ),
                      const SizedBox(
                        width: 8,
                      ),
                      const Text(
                        'nasigoreng',
                        style: TextStyle(
                            color: Color(0xFFE87C5F),
                            fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(
                        width: 160,
                      ),
                      const Text(
                        '12 Juli 2003',
                        style: TextStyle(
                          color: Color(0xFFE87C5F),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

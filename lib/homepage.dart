import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';

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
            SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
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
            SizedBox(height: 20),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child: Image.asset(
                    'assets/images/mask.png',
                  ),
                ),
                Positioned(
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
                Positioned(
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
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Butuh Teman Curhat',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
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
                      'Nama 3',
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
                      child: Text('dr.Ve'),
                    ),
                    SizedBox(height: 5),
                    Text(
                      'Nama 4',
                      style: TextStyle(fontSize: 12),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Ingin Hiburan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Stack(
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
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
              ],
            ),
            SizedBox(height: 10),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Text(
                'Riwayat Laporan',
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 380,
                height: 53,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFE87C5F),
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
                      SizedBox(width: 8,),
                      Text(
                        'nasigoreng',
                        style: TextStyle(
                          color: const Color(0xFFE87C5F),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(width: 160,),
                      Text(
                        '12 Juli 2003',
                        style: TextStyle(
                          color: const Color(0xFFE87C5F),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: 10),
            Align(
              alignment: Alignment.center,
              child: Container(
                width: 380,
                height: 53,
                decoration: BoxDecoration(
                  border: Border.all(
                    color: Color(0xFFE87C5F),
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
                      SizedBox(width: 8,),
                      Text(
                        'nasigoreng',
                        style: TextStyle(
                          color: const Color(0xFFE87C5F),
                          fontWeight: FontWeight.bold
                        ),
                      ),
                      SizedBox(width: 160,),
                      Text(
                        '12 Juli 2003',
                        style: TextStyle(
                          color: const Color(0xFFE87C5F),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

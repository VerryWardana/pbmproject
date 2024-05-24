import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/user/formaduan.dart';
import 'package:flutter_application_1/views/user/homepage.dart';
import 'package:flutter_application_1/views/user/listpesan.dart';

class NavbarBawah extends StatefulWidget {
  const NavbarBawah({Key? key}) : super(key: key);

  @override
  State<NavbarBawah> createState() => _NavbarBawah();
}

class _NavbarBawah extends State<NavbarBawah> {
  int _selectedIndex = 0;

  static const List<Widget> _widgetOptions = <Widget>[
    Homepage(),
    FormAduan(),
    ListPesan()
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(
        index: _selectedIndex,
        children: _widgetOptions,
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.description_rounded),
            label: 'Laporan',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.chat_rounded),
            label: 'Chat'
          )
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.amber[800],
        unselectedItemColor: Colors.grey, // Tambahkan warna untuk item yang tidak terpilih
        onTap: _onItemTapped,
      ),
    );
  }
}

// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Home Page'),
//     );
//   }
// }

// class Laporan extends StatelessWidget {
//   const Laporan({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Laporan Page'),
//     );
//   }
// }

// class Quiz extends StatelessWidget {
//   const Quiz({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return const Center(
//       child: Text('Quiz Page'),
//     );
//   }
// }

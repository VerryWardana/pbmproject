import 'package:flutter/material.dart';

class CustomBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final Function(int) onTap;

  CustomBottomNavigationBar({required this.currentIndex, required this.onTap});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      onTap: onTap,
      currentIndex: currentIndex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Homepage',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.report),
          label: 'Laporan',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.quiz),
          label: 'Quiz',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.message),
          label: 'Pesan',
        ),
      ],
      selectedItemColor: Colors.red,
      unselectedItemColor: Colors.black,
      showUnselectedLabels: true,
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutter_application_1/views/admin/HomePageAdmin.dart';
import 'package:flutter_application_1/views/user/formaduan.dart';
import 'package:flutter_application_1/views/user/homepage.dart';
import 'package:flutter_application_1/views/user/navbar_bawah.dart';
import 'views/user/splashscreen.dart';
import 'views/user/login.dart';
import 'views/user/register.dart';
import 'views/user/navbar_bawah.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Login(),
    );
  }
}

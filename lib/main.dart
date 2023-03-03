import 'package:MusixMatch/login_page.dart';
import 'package:flutter/material.dart';
import 'package:MusixMatch/utilities.dart' as utilities;

void main() {
  runApp(Main());
}

// Commento per mantenere il progetto attivo

class Main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'MusixMatch',
      theme: ThemeData(
        primaryColor: utilities.mainColor,
      ),
      debugShowCheckedModeBanner: false,
      home: LoginScreen(),
    );
  }
}

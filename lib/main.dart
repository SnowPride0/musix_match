import 'package:MusixMatch/login_page.dart';
import 'package:flutter/material.dart';
import 'package:MusixMatch/utilities.dart' as utilities;

//DA FARE: CAMBIA APPLICATION ID

void main() {
  runApp(Main());
}

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

import 'package:MusixMatch/pages_navigator.dart';
import 'package:flutter/material.dart';
import 'package:MusixMatch/utilities.dart' as utilities;

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() =>
      _SignUpScreenState(); // underscore indica che la classe non sarà accessibile al di fuori della classe
}

class _SignUpScreenState extends State<SignUpScreen> {
  // State è generic qundi deve specificare da chi eredita lo stato
  // lista che non cambia mai, quindi final

  final username = TextEditingController();
  final password = TextEditingController(); // aggiornare con funzione hash

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: utilities
            .mainBackgroundColor, // cambia il colore del background dello Scaffold
        resizeToAvoidBottomInset: false, //
        //appBar: AppBar(title: Text('MusixMatch')), attualmente in pausa
        body: Column(children: []),
      ),
    );
  }
}

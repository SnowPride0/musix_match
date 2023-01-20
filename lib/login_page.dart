import 'package:MusixMatch/pages_navigator.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart'; // gestione tap testo
//import 'package:flutter/home_page.dart';
import 'package:MusixMatch/home_page.dart';
import 'package:MusixMatch/signup_page.dart';
import 'package:MusixMatch/utilities.dart' as utilities;

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() =>
      _LoginScreenState(); // underscore indica che la classe non sarà accessibile al di fuori della classe
}

class _LoginScreenState extends State<LoginScreen> {
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
        body: Column(children: [
          // casella di testo, interattiva

          const SizedBox(
            height: 20,
          ),
          Image.asset('assets/images/Logo.png', scale: 3.5),
          Padding(padding: EdgeInsets.only(bottom: 24)),

          Container(
            // main container
            padding: EdgeInsets.only(
              top: 8,
              bottom: 8,
            ),
            decoration: BoxDecoration(
              color: utilities.mainColor,
              borderRadius: BorderRadius.all(Radius.circular(20)),
            ),
            margin: EdgeInsets.only(
              right: 30,
              left: 30,
            ),
            child: Container(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [utilities.lightBlue, utilities.purple],
                  transform: GradientRotation(100),
                ),
                borderRadius: BorderRadius.all(Radius.circular(15)),
              ),
              padding: const EdgeInsets.only(
                left: 20,
                right: 20,
                top: 50,
              ),
              child: Column(
                children: [
                  TextField(
                    style: TextStyle(
                      color: utilities.white,
                    ), // modifica stile testo che viene scritto nel TextField
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        // modifica stile label del TextField, quindi anche colore
                        color: utilities.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        // modifica stile bordi quando TextField é attivo, quindi in teoria quando é visibile
                        borderSide: BorderSide(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        // modifica stile bordi quando TextField é selezionato
                        borderSide: BorderSide(
                          width: 3,
                        ),
                      ),
                      fillColor: utilities.mainBackgroundColor,
                      filled: true,
                      labelText: 'Username',
                    ),
                    controller: username,
                  ),
                  const SizedBox(
                    // simile a Spacer()
                    height: 30,
                  ),
                  TextField(
                    obscureText: true,
                    style: TextStyle(
                      color: utilities.white,
                    ), // modifica stile testo che viene scritto nel TextField
                    decoration: InputDecoration(
                      labelStyle: TextStyle(
                        // modifica stile label del TextField
                        color: utilities.white,
                      ),
                      enabledBorder: OutlineInputBorder(
                        // modifica stile bordi quando TextField é attivo, quindi in teoria quando é visibile
                        borderSide: BorderSide(
                          width: 2,
                        ),
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                      ),
                      focusedBorder: OutlineInputBorder(
                        // modifica stile bordi quando TextField é selezionato
                        borderSide: BorderSide(
                          width: 3,
                        ),
                      ),
                      fillColor: utilities.mainBackgroundColor,
                      filled: true,
                      labelText: 'Password',
                    ),
                    controller: password,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Container(
                    margin: const EdgeInsets.only(
                        left: 20.0, right: 20.0, top: 20, bottom: 10),
                    child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                        primary: utilities.mainColor,
                        padding: EdgeInsets.only(
                            top: 15, bottom: 15, left: 50, right: 50),
                        shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        ),
                      ),
                      onPressed: () {
                        userAuthentication();
                      },
                      child: const Text('LOGIN',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center),
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: RichText(
                      text: TextSpan(
                        text: "Don't have an account? ",
                        style: TextStyle(
                          color: utilities.white,
                        ),
                        children: [
                          TextSpan(
                              text: "SIGN UP",
                              style: TextStyle(
                                color: utilities.white,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return SignUpScreen();
                                  }));
                                }),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                ],
              ),
            ),
          ),
        ]),
      ),
    );
  }

  void userAuthentication() {
    if (!username.text.isEmpty && !password.text.isEmpty) {
      Navigator.push(context, MaterialPageRoute(builder: (context) {
        return PagesNavigator();
      }));
      return;
    }

    showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
              title: const Text('Info account'),
              content: const Text('Hai dimenticato qualcosa!'),
              actions: <Widget>[
                TextButton(
                  onPressed: () => Navigator.pop(context),
                  child: const Text('OK'),
                ),
              ],
            ));
  }
}

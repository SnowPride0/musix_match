import 'package:MusixMatch/pages_navigator.dart';
import 'package:MusixMatch/login_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:MusixMatch/utilities.dart' as utilities;

class SignUpScreen extends StatefulWidget {
  @override
  _SignUpScreenState createState() =>
      _SignUpScreenState(); // underscore indica che la classe non sarà accessibile al di fuori della classe
}

class _SignUpScreenState extends State<SignUpScreen> {
  // State è generic qundi deve specificare da chi eredita lo stato
  // lista che non cambia mai, quindi final

  final username = TextEditingController(); // aggiornare con funzione hash
  final password = TextEditingController();
  final confirmPassword = TextEditingController();
  final mail = TextEditingController();

  //final int distanceTextField = 15;

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
                    height: 15,
                  ),
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
                      labelText: 'E-mail',
                    ),
                    controller: mail,
                  ),
                  const SizedBox(
                    // simile a Spacer()
                    height: 15,
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
                    height: 15,
                  ),
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
                      labelText: 'Confirm Password',
                    ),
                    controller: confirmPassword,
                  ),
                  const SizedBox(
                    // simile a Spacer()
                    height: 15,
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
                      onPressed: () {},
                      child: const Text('SIGN UP',
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
                        text: "Already have an account? ",
                        style: TextStyle(
                          color: utilities.white,
                        ),
                        children: [
                          TextSpan(
                              text: "LOG IN",
                              style: TextStyle(
                                color: utilities.white,
                                fontWeight: FontWeight.bold,
                              ),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () {
                                  Navigator.push(context,
                                      MaterialPageRoute(builder: (context) {
                                    return LoginScreen();
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
}

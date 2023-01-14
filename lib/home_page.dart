import 'package:flutter/material.dart';
import 'package:MusixMatch/artist_showcase.dart';
import 'package:MusixMatch/utilities.dart' as utilities;

class HomePage extends StatefulWidget {
  @override
  _HomePage createState() => _HomePage();
}

class _HomePage extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            title: const Text('Home'),
            iconTheme: const IconThemeData(color: utilities.white)),
        backgroundColor: utilities.mainBackgroundColor,
        body: Column(children: [
          ArtistShowcase.Instantiate("U2", subtitle: "#1 in your favorites"),
          Card(
            color: utilities.songColor,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.music_note),
                  title: Text("Don't stop me now"),
                  subtitle: Text('Queen feat. David Bowie'),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: <Widget>[
                    TextButton(
                      child: const Icon(Icons.question_mark,
                          color: utilities.mainBackgroundColor),
                      onPressed: () {/* ... */},
                    ),
                    TextButton(
                      child: const Icon(Icons.play_arrow_rounded,
                          color: utilities.mainBackgroundColor),
                      onPressed: () {/* ... */},
                    ),
                  ],
                ),
              ],
            ),
          ),
        ]),
      ),
    );
  }
}

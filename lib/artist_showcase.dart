import 'package:flutter/material.dart';
import 'package:MusixMatch/utilities.dart' as utilities;

class ArtistShowcase {
  static Widget Instantiate(String artistName, {String subtitle = ""}) {
    return Card(
      // clipBehavior is necessary because, without it, the InkWell's animation
      // will extend beyond the rounded edges of the [Card] (see https://github.com/flutter/flutter/issues/109776)
      // This comes with a small performance cost, and you should not set [clipBehavior]
      // unless you need it.
      color: utilities.artistColor,
      clipBehavior: Clip.hardEdge,
      child: InkWell(
        splashColor: utilities.lightBlue.withAlpha(30),
        onTap: () {},
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: <Widget>[
            ListTile(
              leading: Icon(Icons.album),
              title: Text(artistName),
              subtitle: Text(subtitle),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: <Widget>[
                TextButton(
                  child: const Icon(Icons.question_mark,
                      color: utilities.mainBackgroundColor),
                  onPressed: () {/* ... */},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

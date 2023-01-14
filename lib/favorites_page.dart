import 'package:flutter/material.dart';
import 'package:MusixMatch/utilities.dart' as utilities;

class FavoritesPage extends StatefulWidget {
  @override
  _FavoritesPage createState() => _FavoritesPage();
}

class _FavoritesPage extends State<FavoritesPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: AppBar(
            title: const Text('Favorites'),
            iconTheme: const IconThemeData(color: utilities.white)),
        backgroundColor: utilities.mainBackgroundColor,
        body: Text('Favorites page'),
      ),
    );
  }
}

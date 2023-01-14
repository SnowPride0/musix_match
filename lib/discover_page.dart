import 'package:flutter/material.dart';
import 'package:MusixMatch/utilities.dart' as utilities;

class DiscoverPage extends StatefulWidget {
  @override
  _DiscoverPage createState() => _DiscoverPage();
}

class _DiscoverPage extends State<DiscoverPage> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false, //
        appBar: AppBar(
            title: const Text('Discover'),
            iconTheme: const IconThemeData(color: utilities.white)),
        backgroundColor: utilities.mainBackgroundColor,
        body: Text('Discover page'),
      ),
    );
  }
}

import 'package:MusixMatch/main.dart';
import 'package:MusixMatch/home_page.dart';
import 'package:MusixMatch/discover_page.dart';
import 'package:MusixMatch/favorites_page.dart';
import 'package:MusixMatch/utilities.dart' as utilities;
import 'package:flutter/material.dart';

class PagesNavigator extends StatefulWidget {
  @override
  _PagesNavigatorState createState() => _PagesNavigatorState();
}

class _PagesNavigatorState extends State<PagesNavigator> {
  int navigationCurrrentIndex = 0;

  final _pages = [
    HomePage(),
    DiscoverPage(),
    FavoritesPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: utilities.mainBackgroundColor,
        body: _pages[navigationCurrrentIndex],
        bottomNavigationBar: BottomNavigationBar(
          items: [
            const BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
            ),
            const BottomNavigationBarItem(
                icon: Icon(Icons.audiotrack), label: 'Discover'),
            const BottomNavigationBarItem(
                icon: Icon(Icons.favorite), label: 'Favorites'),
          ],
          showSelectedLabels: false,
          showUnselectedLabels: false,
          selectedItemColor: utilities.white,
          unselectedItemColor: utilities.mainBackgroundColor,
          currentIndex: navigationCurrrentIndex,
          selectedIconTheme: const IconThemeData(
            size: 36,
          ),
          backgroundColor: utilities.purple,
          onTap: (index) {
            setState(() {
              navigationCurrrentIndex = index;
            });
          },
        ),
      ),
    );
  }
}

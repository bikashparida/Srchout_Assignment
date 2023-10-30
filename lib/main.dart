import 'package:bikeapp/screens/bookmark_page.dart';
import 'package:bikeapp/screens/home_page.dart';
import 'package:bikeapp/screens/location_page.dart';
import 'package:bikeapp/screens/setting_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _selectedIndex = 0;
  static const List<Widget> _pages = [
    HomePage(),
    LocationPage(),
    BookMarkPage(),
    SettingPage()
  ];
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        bottomNavigationBar: BottomNavigationBar(
          showSelectedLabels: false,
          showUnselectedLabels: false,
          items: [
            BottomNavigationBarItem(
                icon: Image.asset(
                  'images/home.png',
                  height: 30,
                  width: 30,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'images/mapmarker.png',
                  height: 30,
                  width: 30,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'images/cardwallet.png',
                  height: 30,
                  width: 30,
                ),
                label: ''),
            BottomNavigationBarItem(
                icon: Image.asset(
                  'images/setting.png',
                  height: 30,
                  width: 30,
                ),
                label: ''),
          ],
          currentIndex: _selectedIndex,
          onTap: _onItemTapped,
        ),
        body: _pages.elementAt(_selectedIndex),
      ),
    );
  }
}

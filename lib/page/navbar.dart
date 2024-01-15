import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:uts/page/Favorite_page.dart';
import 'package:uts/page/Search_page.dart';
import 'package:uts/page/home_page.dart';
import 'package:uts/page/profile_page.dart';

class Navbars extends StatefulWidget {
  const Navbars({Key? key}) : super(key: key);

  @override
  State<Navbars> createState() => _NavbarsState();
}

class _NavbarsState extends State<Navbars> {
  int _selectedIndex = 0;
  final _screens = [
    HomePage(),
    SearchPage(),
    FavoritePage(),
    Profile(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _screens[_selectedIndex],
      bottomNavigationBar: Container(
        height: 80,
        child: BottomNavigationBar(
          backgroundColor: Colors.white,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xFF7165D6),
          unselectedItemColor: Colors.black26,
          selectedLabelStyle: TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 15,
          ),
          currentIndex: _selectedIndex,
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(CupertinoIcons.house_fill),
              // Contoh penggunaan ikon rumah terisi
              label: 'Home',
            ),
            BottomNavigationBarItem(
                icon: Icon(
                  CupertinoIcons.chat_bubble_text_fill,
                ),
                label: "Messages"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.calendar_today), label: "Schedule"),
            BottomNavigationBarItem(
                icon: Icon(CupertinoIcons.settings), label: "Settings"),
          ],
        ),
      ),
    );
  }
}

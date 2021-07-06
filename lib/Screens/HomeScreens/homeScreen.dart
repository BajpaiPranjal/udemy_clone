import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';

import 'Account.dart';
import 'MyCourses.dart';
import 'Search.dart';
import 'Wishlist.dart';
import 'featured.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  PageController pageController = new PageController();
  int currentIndex = 0;

  void onTap(int page) {
    setState(() {
      currentIndex = page;
    });
    pageController.jumpToPage(page);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        onPageChanged: (index) {
          setState(() {
            currentIndex = index;
          });
        },
        controller: pageController,
        children: [Featured(), Search(), MyCourses(), Wishlist(), Account()],
      ),
      bottomNavigationBar: BottomNavigationBar(
        onTap: onTap,
        backgroundColor: Colors.grey.shade900,
        selectedIconTheme: IconThemeData(color: Colors.redAccent),
        unselectedIconTheme: IconThemeData(color: Colors.white),
        //unselectedLabelStyle: TextStyle(color: Colors.white),
        unselectedItemColor: Colors.white,
        currentIndex: currentIndex,
        iconSize: 26,
        selectedFontSize: 14, unselectedFontSize: 12,

        type: BottomNavigationBarType.fixed,
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.star), label: 'Featured'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(
              icon: Icon(Icons.music_video), label: 'My Courses'),
          BottomNavigationBarItem(
              icon: Icon(EvaIcons.heartOutline), label: 'Wishlist'),
          BottomNavigationBarItem(
              icon: Icon(Icons.account_box), label: 'Account'),
        ],
      ),
    );
  }
}

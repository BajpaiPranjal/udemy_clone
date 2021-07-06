import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:eva_icons_flutter/icon_data.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
//import 'package:udemy_clone/Screens/HomeScreens/Featured.dart';
import 'package:udemy_clone/Screens/HomeScreens/homeScreen.dart';

class MyList extends StatefulWidget {
  const MyList({Key? key}) : super(key: key);

  @override
  _MyListState createState() => _MyListState();
}

class _MyListState extends State<MyList> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey.shade900,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text('My List'),
        actions: [
          IconButton(
              onPressed: () {
                //Jump back to featured
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: HomeScreen(),
                        type: PageTransitionType.leftToRight));
              },
              icon: Icon(EvaIcons.arrowBack))
        ],
      ),
    );
  }
}

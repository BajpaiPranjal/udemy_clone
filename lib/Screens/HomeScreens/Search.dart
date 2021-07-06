import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:udemy_clone/Screens/HomeScreens/MyList.dart';

class Search extends StatefulWidget {
  const Search({Key? key}) : super(key: key);

  @override
  _SearchState createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Search',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
            onPressed: () {
              //Jump to my List
              Navigator.pushReplacement(
                  context,
                  PageTransition(
                      child: MyList(),
                      type: PageTransitionType.rightToLeftWithFade));
            },
            icon: Icon(EvaIcons.shoppingCartOutline),
          )
        ],
      ),
      body: Center(
        child: Text(
          'Search for the courses you are intrested in',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

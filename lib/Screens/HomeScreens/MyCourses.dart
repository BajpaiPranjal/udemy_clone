import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:udemy_clone/Screens/HomeScreens/MyList.dart';

class MyCourses extends StatefulWidget {
  const MyCourses({Key? key}) : super(key: key);

  @override
  _MyCoursesState createState() => _MyCoursesState();
}

class _MyCoursesState extends State<MyCourses> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'My Courses',
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
          'your courses will show here',
          style: TextStyle(
            color: Colors.grey,
            fontSize: 18,
          ),
        ),
      ),
    );
  }
}

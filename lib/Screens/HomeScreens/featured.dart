import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:udemy_clone/Screens/HomeScreens/MyList.dart';
//import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class Featured extends StatefulWidget {
  const Featured({Key? key}) : super(key: key);

  @override
  _FeaturedState createState() => _FeaturedState();
}

class _FeaturedState extends State<Featured> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        actions: [
          IconButton(
              onPressed: () {
                ///JUMP to MyList page
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: MyList(),
                        type: PageTransitionType.rightToLeftWithFade));
              },
              icon: Icon(EvaIcons.shoppingCartOutline))
        ],
        backgroundColor: Colors.grey.shade900,
        title: Text(
          'Featured',
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: 400,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage('images/sale.jpg'))),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 80,
                width: 400,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10.0),
                  color: Colors.blueAccent,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Courses now on sale',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                      ),
                    ),
                    Text(
                      'only 3 Hours left!',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 22.0,
                      ),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

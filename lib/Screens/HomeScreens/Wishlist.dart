import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:udemy_clone/Screens/HomeScreens/MyList.dart';

class Wishlist extends StatefulWidget {
  const Wishlist({Key? key}) : super(key: key);

  @override
  _WishlistState createState() => _WishlistState();
}

class _WishlistState extends State<Wishlist> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Wishlist',
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
      body: SingleChildScrollView(
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 350,
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CircleAvatar(
                      child: Icon(
                        EvaIcons.shakeOutline,
                        color: Colors.white,
                      ),
                      radius: 50.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Want to save something for later',
                        style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 20),
                      child: Text(
                        'Your wishlist shall go here',
                        style: TextStyle(
                          color: Colors.grey.shade800,
                          fontSize: 20,
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'Browse Categories',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold),
              ),
              ListTile(
                //// 1
                leading: Icon(
                  EvaIcons.browserOutline,
                  color: Colors.grey.shade500,
                ),
                title: Text(
                  'Finance and accounting',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
                ),
              ),
              ListTile(
                ///2
                leading: Icon(
                  EvaIcons.compassOutline,
                  color: Colors.grey.shade500,
                ),
                title: Text(
                  'Development',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
                ),
              ),
              ListTile(
                //3
                leading: Icon(
                  EvaIcons.briefcaseOutline,
                  color: Colors.grey.shade500,
                ),
                title: Text(
                  'Business',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
                ),
              ),
              ListTile(
                //4
                leading: Icon(
                  EvaIcons.codeOutline,
                  color: Colors.grey.shade500,
                ),
                title: Text(
                  'IT & Software',
                  style: TextStyle(color: Colors.grey.shade500, fontSize: 16),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

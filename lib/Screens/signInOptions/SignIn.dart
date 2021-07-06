//import 'dart:html';

//import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:udemy_clone/Screens/HomeScreens/homeScreen.dart';

class SignIn extends StatefulWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  _SignInState createState() => _SignInState();
}

class _SignInState extends State<SignIn> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                'Sign in',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 20.0,
                    fontWeight: FontWeight.bold),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                  onPressed: () {
                    print('Signing in with google');
                    Navigator.pushReplacement(
                        context,
                        PageTransition(
                            child: HomeScreen(),
                            type: PageTransitionType.rightToLeftWithFade));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(EvaIcons.google),
                      Text('  Sign in with google')
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.black, width: 1),
                  ), //style
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                  onPressed: () {
                    print('Signing in with FB');
                    Navigator.pushReplacement(
                        context,
                        PageTransition(
                            child: HomeScreen(),
                            type: PageTransitionType.rightToLeftWithFade));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(EvaIcons.facebook),
                      Text('Sign in with facebook')
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.black, width: 1),
                  ), //style
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: OutlinedButton(
                  onPressed: () {
                    print('Signing in with twitter');
                    Navigator.pushReplacement(
                        context,
                        PageTransition(
                            child: HomeScreen(),
                            type: PageTransitionType.rightToLeftWithFade));
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(EvaIcons.twitter),
                      Text('   Sign in with twitter')
                    ],
                  ),
                  style: OutlinedButton.styleFrom(
                    primary: Colors.black,
                    backgroundColor: Colors.white,
                    side: BorderSide(color: Colors.black, width: 1),
                  ), //style
                ),
              ),
            ],
          ),
        ),
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('images/poster.png'),
                fit: BoxFit.fitHeight,
                colorFilter:
                    ColorFilter.mode(Colors.black54, BlendMode.darken))),
      ),
    );
  }
}

import 'package:eva_icons_flutter/eva_icons_flutter.dart';
import 'package:flutter/material.dart';
import 'package:page_transition/page_transition.dart';
import 'package:udemy_clone/Screens/HomeScreens/MyList.dart';
import 'package:udemy_clone/Screens/landingPage.dart';
//import 'package:udemy_clone/Screens/signInOptions/SignIn.dart';

class Account extends StatefulWidget {
  const Account({Key? key}) : super(key: key);

  @override
  _AccountState createState() => _AccountState();
}

class _AccountState extends State<Account> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: Text(
          'Account',
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
              onPressed: () {
                Navigator.pushReplacement(
                    context,
                    PageTransition(
                        child: MyList(),
                        type: PageTransitionType.rightToLeftWithFade));
              },
              icon: Icon(EvaIcons.shoppingCartOutline))
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(left: 8),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 300,
                width: 400,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Text(
                      'Your Name',
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 24),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Icon(
                            EvaIcons.google,
                            color: Colors.white,
                          ),
                          Text(
                            'youremail@gmail.com',
                            style: TextStyle(color: Colors.grey, fontSize: 24),
                          )
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 30.0),
                      child: MaterialButton(
                        onPressed: () {},
                        child: Text(
                          'Become an instructor',
                          style: TextStyle(
                            color: Colors.lightBlue,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'video prefrences',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'Download Options',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'Video playback Options',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              Text(
                'Account Settings',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'Account Security',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'Email Notification Prefrences',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'Learning Reminers',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              Text(
                'Support',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'About Udemy',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'About Udemy for business',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'FAQs',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'Share the udemy app',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              Text(
                'Diagnostics',
                style: TextStyle(color: Colors.grey, fontSize: 14.0),
              ),
              ListTile(
                trailing: Icon(
                  Icons.arrow_forward_ios,
                  color: Colors.white,
                ),
                title: Text(
                  'Status',
                  style: TextStyle(color: Colors.white, fontSize: 20.0),
                ),
              ),
              Center(
                child: MaterialButton(
                  onPressed: () {
                    // Jump to landing Page
                    Navigator.pushReplacement(
                      context,
                      PageTransition(
                          child: LandingPage(),
                          type: PageTransitionType.bottomToTop),
                    );
                  },
                  child: Text(
                    'Sign out',
                    style: TextStyle(
                      color: Colors.lightBlue,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 10),
                child: Center(
                  child: Text(
                    'Udemy Clone',
                    style: TextStyle(color: Colors.grey, fontSize: 14.0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

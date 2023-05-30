import 'dart:async';

import 'package:demo_project/Pages/login_page.dart';
import 'package:demo_project/Pages/my_home_page.dart';
import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({Key? key}) : super(key: key);

  @override
  State<SplashPage> createState() => SplashPageState();
}

class SplashPageState extends State<SplashPage> {
  static const String KEYLOGIN = "login";

  @override
  void initState() {
    super.initState();
    whereToGO();
  }

  void whereToGO() async {
    var preferences = await SharedPreferences.getInstance();
    var isLoggedIn = preferences.getBool(KEYLOGIN);

    Timer(
      const Duration(seconds: 3),
          () {
        if (isLoggedIn != null) {
          if (isLoggedIn) {
            Navigator.pushReplacement(
                context, MaterialPageRoute(builder: (context)
            =>
            const MyHomePage(title: "Home"))
        );
        }else{
        Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) =>const LoginPage()));
        }
        }else{
        Navigator.pushReplacement(
        context, MaterialPageRoute(builder: (context) =>const LoginPage()));

        }
      },
    );
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: Theme
            .of(context)
            .colorScheme
            .inversePrimary,
        child: Center(
          child: SizedBox(
              height: 200,
              width: 200,
              child: Image.asset("images/movingfox.gif")),
        ),
      ),
    );
  }
}

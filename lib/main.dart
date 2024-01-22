import 'package:flutter/material.dart';
import 'package:new_app_2110020019_/page/homePage.dart';
import 'package:new_app_2110020019_/page/otomotifPage.dart';
import 'package:new_app_2110020019_/page/profilePage.dart';
import 'package:new_app_2110020019_/page/splashScreen.dart';
import 'package:new_app_2110020019_/page/sportPage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future: Future.delayed(Duration(seconds: 2)),
      builder: (context, snapshot) {
        if (snapshot.connectionState != ConnectionState.waiting) {
          return MaterialApp(
            routes: {
              '/home': (context) => HomePage(),
              '/otomotive': (context) => OtomotivePage(),
              '/sport': (context) => SportPage(),
              '/profile': (context) => ProfilePage(),
            },
            debugShowCheckedModeBanner: false,
            home: HomePage(),
          );
        } else {
          return SplashScreen();
        }
      },
    );
  }
}

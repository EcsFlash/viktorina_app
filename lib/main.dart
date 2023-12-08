import 'dart:math';

import 'package:flutter/material.dart';


import 'package:geoquiz/Pages/splashScreen.dart';



import 'Widgets/help.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // static StarsError starsError = new StarsError();

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Географическая Викторина',
      theme: ThemeData(
        //scaffoldBackgroundColor: Constants.backgroundColor,
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    );

  }

}





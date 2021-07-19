import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:viktorina_app/Pages/Home.dart';
import 'package:viktorina_app/Pages/splashScreen.dart';
import 'package:viktorina_app/Tools/constants.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'data/stars.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider<Stars>(
        create: (_) => new Stars(),
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Географическая Викторина',
      theme: ThemeData(
        scaffoldBackgroundColor: Constants.backgroundColor,
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    ),
    );
  }
}


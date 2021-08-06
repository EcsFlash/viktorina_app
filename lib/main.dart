import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import 'package:viktorina_app/Pages/splashScreen.dart';

import 'package:viktorina_app/data/health.dart';

import 'data/stars.dart';
Future main() async {
  // SharedPreferences sp = await SharedPreferences.getInstance();
  // start(sp, context);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider<Health>(create: (_) => Health()),
        ChangeNotifierProvider<Stars>(create: (_) => Stars()),
      ],
    child: MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Географическая Викторина',
      theme: ThemeData(
        //scaffoldBackgroundColor: Constants.backgroundColor,
        primarySwatch: Colors.blue,
      ),
      home: SplashScreen(),
    ),
    );
  }

}





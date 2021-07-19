import 'dart:async';
import 'package:lottie/lottie.dart';
import 'package:flutter/material.dart';
import 'package:viktorina_app/Pages/Home.dart';
import 'package:viktorina_app/Tools/constants.dart';


class SplashScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Timer(Duration(milliseconds: 2500), () {
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=> Home()));
    });
    return Scaffold(
      backgroundColor: Constants.backgroundColor,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(child: Lottie.asset('assets/4975-question-mark.json',
                width: 200,
                height: 200,
                fit: BoxFit.fill,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

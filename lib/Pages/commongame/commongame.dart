import 'dart:math';

import 'package:flutter/material.dart';
import 'package:viktorina_app/Tools/Helper.dart';
import 'package:viktorina_app/data/capital_of_countries.dart';

class CommonGamePage extends StatelessWidget {
  int number;
  CommonGamePage({required this.number});
  Random random = Random();
  final trueSnackBar = SnackBar(content: Text('Верно!'), backgroundColor: Colors.green, duration: Duration(milliseconds: 700),);
  final falseSnackBar = SnackBar(content: Text('Не верно! Попробуй еще раз!', ), backgroundColor: Colors.red, duration: Duration(milliseconds: 700),);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                SizedBox(height: Helper.getHeight(context: context, factor: 0.1),),
                Image.asset('${CapitalOfCoutries().b[number].img}', width: Helper.getWidth(context: context, factor: 0.85), height: Helper.getHeight(context: context, factor: 0.35),),
                SizedBox(height: Helper.getHeight(context: context, factor: 0.05),),
                Text('${CapitalOfCoutries().b[number].question}', style: TextStyle(fontSize: 20),),
                SizedBox(height: Helper.getHeight(context: context, factor: 0.1),),
                Container(
                  padding: EdgeInsets.symmetric(horizontal: Helper.getHorizontalPadding(context: context, factor: 0.05)),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 30.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                              ),
                            primary: Colors.deepOrange
                          ),
                          onPressed: () {
                            if (CapitalOfCoutries().b[number].answers[0] == CapitalOfCoutries().b[number].answer) {
                              int r = random.nextInt(CapitalOfCoutries().b.length);
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => CommonGamePage(number: r,)));
                              ScaffoldMessenger.of(context).showSnackBar(trueSnackBar);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(falseSnackBar);
                            }
                          },
                          child: Text('${CapitalOfCoutries().b[number].answers[0]}'),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 30.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(Radius.circular(30)),
                              ),
                              primary: Colors.deepOrange
                          ),
                          onPressed: () {
                            if (CapitalOfCoutries().b[number].answers[1] == CapitalOfCoutries().b[number].answer) {
                              int r = random.nextInt(CapitalOfCoutries().b.length);
                              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => CommonGamePage(number: r,)));
                              ScaffoldMessenger.of(context).showSnackBar(trueSnackBar);
                            } else {
                              ScaffoldMessenger.of(context).showSnackBar(falseSnackBar);
                            }
                          },
                          child: Text('${CapitalOfCoutries().b[number].answers[1]}'),
                        ),

                      ],
                    ),
                  ),
                SizedBox(height: Helper.getHeight(context: context, factor: 0.1),),
                Container(
                  padding: EdgeInsets.only(left: Helper.getHorizontalPadding(context: context, factor: 0.05,), right: Helper.getHorizontalPadding(context: context, factor: 0.05,), bottom: Helper.getHorizontalPadding(context: context, factor: 0.08,)),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 30.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                            ),
                            primary: Colors.deepOrange
                        ),
                        onPressed: () {
                          if (CapitalOfCoutries().b[number].answers[2] == CapitalOfCoutries().b[number].answer) {
                            int r = random.nextInt(CapitalOfCoutries().b.length);
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => CommonGamePage(number: r,)));
                            ScaffoldMessenger.of(context).showSnackBar(trueSnackBar);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(falseSnackBar);
                          }
                        },
                        child: Text('${CapitalOfCoutries().b[number].answers[2]}'),
                      ),
                      Expanded(
                        child: Container(),
                      ),
                      ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            elevation: 30.0,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.all(Radius.circular(30)),
                            ),
                            primary: Colors.deepOrange
                        ),
                        onPressed: () {
                          if (CapitalOfCoutries().b[number].answers[3] == CapitalOfCoutries().b[number].answer) {
                            int r = random.nextInt(CapitalOfCoutries().b.length);
                            Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => CommonGamePage(number: r,)));
                            ScaffoldMessenger.of(context).showSnackBar(trueSnackBar);
                          } else {
                            ScaffoldMessenger.of(context).showSnackBar(falseSnackBar);
                          }
                        },
                        child: Text('${CapitalOfCoutries().b[number].answers[3]}'),
                      ),
                    ],
                  ),
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}
import 'dart:math';
import 'package:provider/provider.dart';
import 'package:flutter/material.dart';
import 'package:viktorina_app/Tools/Helper.dart';
import 'package:viktorina_app/Widgets/counter.dart';
import 'package:viktorina_app/Widgets/healthCounter.dart';
import 'package:viktorina_app/data/data.dart';
import 'package:viktorina_app/data/health.dart';
import 'package:viktorina_app/data/stars.dart';

import '../Home.dart';

class RatingGamePage extends StatelessWidget {
  final List<Data> questionList;
  final int questionNumber;

  RatingGamePage({required this.questionNumber, required this.questionList});

  final Random random = Random();
  final trueSnackBar = SnackBar(content: Text('Верно!'),
    backgroundColor: Colors.green,
    duration: Duration(milliseconds: 500),);
  final falseSnackBar = SnackBar(content: Text('Не верно! Попробуй еще раз!',),
    backgroundColor: Colors.red,
    duration: Duration(milliseconds: 500),);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
            child: Center(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    padding: EdgeInsets.all(Helper.getHorizontalPadding(
                        context: context, factor: 0.04)),
                    child: Row(
                      children: [
                        Counter(stars: context
                            .watch<Stars>()
                            .getStars),
                        Expanded(child: Container()),
                        HealthCounter(health: context
                            .watch<Health>()
                            .getHealth),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: Helper.getHeight(context: context, factor: 0.1),),
                  Image.asset('${questionList[questionNumber].img}',
                    width: Helper.getWidth(context: context, factor: 0.85),
                    height: Helper.getHeight(context: context, factor: 0.35),),
                  SizedBox(
                    height: Helper.getHeight(context: context, factor: 0.05),),
                  Text('${questionList[questionNumber].question}',
                    style: TextStyle(fontSize: 20),),
                  SizedBox(
                    height: Helper.getHeight(context: context, factor: 0.1),),
                  Container(
                    padding: EdgeInsets.symmetric(
                        horizontal: Helper.getHorizontalPadding(
                            context: context, factor: 0.05)),
                    child: Row(
                      //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 30.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(30)),
                              ),
                              primary: Colors.deepOrange
                          ),
                          onPressed: () =>
                              answerNavigation(context: context,
                                  answerNumber: 0,
                                  questionNumber: questionNumber,
                                  health: Provider
                                      .of<Health>(context, listen: false)
                                      .getHealth),
                          child: Text('${questionList[questionNumber]
                              .answers[0]}'),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 30.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(30)),
                              ),
                              primary: Colors.deepOrange
                          ),
                          onPressed: () =>
                              answerNavigation(context: context,
                                  answerNumber: 1,
                                  questionNumber: questionNumber,
                                  health: Provider.of<Health>(context, listen: false).getHealth),
                          child: Text('${questionList[questionNumber].answers[1]}'),
                        ),

                      ],
                    ),
                  ),
                  SizedBox(
                    height: Helper.getHeight(context: context, factor: 0.1),),
                  Container(
                    padding: EdgeInsets.only(left: Helper.getHorizontalPadding(
                      context: context, factor: 0.05,),
                        right: Helper.getHorizontalPadding(
                          context: context, factor: 0.05,),
                        bottom: Helper.getHorizontalPadding(
                          context: context, factor: 0.08,)),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 30.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(30)),
                              ),
                              primary: Colors.deepOrange
                          ),
                          onPressed: () =>
                              answerNavigation(context: context,
                                  answerNumber: 2,
                                  questionNumber: questionNumber,
                                  health: Provider.of<Health>(context, listen: false).getHealth),
                          child: Text('${questionList[questionNumber].answers[2]}'),
                        ),
                        Expanded(
                          child: Container(),
                        ),
                        ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              elevation: 30.0,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.all(
                                    Radius.circular(30)),
                              ),
                              primary: Colors.deepOrange
                          ),
                          onPressed: () =>
                              answerNavigation(context: context,
                                  answerNumber: 3,
                                  questionNumber: questionNumber,
                                  health: Provider.of<Health>(context, listen: false).getHealth),

                          child: Text('${questionList[questionNumber].answers[3]}'),
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

  // answerNavigation({required int answerNumber,required int questionNumber,required BuildContext context,required int health}){
  //   if (questionList[questionNumber].answers[answerNumber] == questionList[questionNumber].answer) {
  //     context.read<Stars>().addStars();
  //     ScaffoldMessenger.of(context).showSnackBar(trueSnackBar);
  //     if(questionList.length > 0){
  //       questionList.removeAt(questionNumber);
  //     }
  //     print(questionList.length);
  //     if(questionList.length == 1){
  //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => RatingGamePage(questionNumber: 0, questionList: questionList,)));
  //       print('1st');
  //     } if(questionList.length < 1){
  //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Home()));
  //       print('2nd');
  //     } if(questionList.length > 1){
  //       int r = random.nextInt(questionList.length - 1);
  //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => RatingGamePage(questionNumber: r, questionList: questionList,)));
  //       print('3rd');
  //     }
  //   } else {
  //     //ScaffoldMessenger.of(context).showSnackBar(falseSnackBar);
  //     if(health <= 1 ) {
  //       context.read<Health>().decrementHealth();
  //       Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Home()));
  //     } else{
  //       context.read<Health>().decrementHealth();
  //       ScaffoldMessenger.of(context).showSnackBar(falseSnackBar);
  //     }
  //
  //   }
  // }
  answerNavigation(
      {required int answerNumber, required int questionNumber, required BuildContext context, required int health}) {
    if (questionList[questionNumber].answers[answerNumber] ==
        questionList[questionNumber].answer) {
      ScaffoldMessenger.of(context).showSnackBar(trueSnackBar);
      questionList.removeAt(questionNumber);
      if (questionList.length == 1) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) =>
                RatingGamePage(
                    questionNumber: 0, questionList: questionList)));
      }
      if (questionList.length == 0) {
        Navigator.pushReplacement(context,
            MaterialPageRoute(builder: (BuildContext context) => Home()));
      }
      if (questionList.length >= 2) {
        int r = random.nextInt(questionList.length - 1);
        Navigator.pushReplacement(context, MaterialPageRoute(
            builder: (BuildContext context) =>
                RatingGamePage(questionNumber: r, questionList: questionList)));
      }
    } else {
      ScaffoldMessenger.of(context).showSnackBar(falseSnackBar);
    }
  }
}


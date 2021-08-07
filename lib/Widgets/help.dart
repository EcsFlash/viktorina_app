
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:viktorina_app/Pages/ratinggame/game.dart';
import 'package:viktorina_app/Tools/Helper.dart';
import 'package:provider/provider.dart';
import 'package:viktorina_app/data/data.dart';
import 'package:viktorina_app/data/health.dart';
import 'package:viktorina_app/data/stars.dart';
class HelpButton extends StatelessWidget {
  final List<Data> questionList;
  final int questionNumber;
  final int numberOfQuestionsAnswered;
  final int startValue;
  HelpButton({required this.questionList, required this.questionNumber, required this.numberOfQuestionsAnswered, required this.startValue});
  @override
  Widget build(BuildContext context) {
    return Container(
      child: IconButton(
          onPressed: (){
            print('here we are go');
            showDialog(context: context, builder: (_) => HelpMenu(context: context, questionList: questionList, questionNumber: questionNumber, numberOfQuestionsAnswered: numberOfQuestionsAnswered, startValue: startValue,));
          },
          icon: Icon(Icons.help_outline)
          //icon: Icon(Icons.flutter_dash)
      ),
    );
  }
}

Widget HelpMenu({required BuildContext context, required List<Data> questionList, required int questionNumber, required int numberOfQuestionsAnswered, required int startValue,}){
  return Dialog(
    backgroundColor: Colors.transparent,
    child: Material(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)),),
      color: Colors.lightBlueAccent,
      child: Container(
        height: Helper.getHeight(factor: 0.65, context: context),
        width: Helper.getWidth(factor: 1.5, context: context),
        clipBehavior: Clip.none,
        color: Colors.transparent,
        child: Column(
          children: [
             Padding(
               padding: const EdgeInsets.only(top: 10.0),
               child: Text("Помощь", style: TextStyle(fontSize: 18),),
             ),
            Padding(
              padding: const EdgeInsets.only(top: 6.0, bottom: 4.0, left: 4.0, right: 4.0),
                child: Material(
                    child: Container(
                        padding: EdgeInsets.only(right: 10, left: 10, top: 25),
                        height: Helper.getHeight(factor: 0.59, context: context),
                        width: Helper.getWidth(factor: 1, context: context),
                        child: Center(
                          child: Column(
                            children: [
                              myTableRow(name: 'Восстановить жизнь:', cost: 10, context: context, questionNumber: questionNumber, questionList: questionList, numberOfQuestionsAnswered: numberOfQuestionsAnswered, startValue: startValue,),
                              SizedBox(height: Helper.getHeight(context: context, factor: 0.01,),),
                              myTableRow(name: 'Подсказка 50/50:', cost: 10, context: context, questionNumber: questionNumber, questionList: questionList, numberOfQuestionsAnswered: numberOfQuestionsAnswered, startValue: startValue,),
                              SizedBox(height: Helper.getHeight(context: context, factor: 0.01),),
                              myTableRow(name: 'Пропустить вопрос:', cost: 10, context: context, questionNumber: questionNumber, questionList: questionList, numberOfQuestionsAnswered: numberOfQuestionsAnswered, startValue: startValue,),
                              SizedBox(height: Helper.getHeight(context: context, factor: 0.01),),
                            ],
                          ),
                        )
                    ),
                    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)),),
                ),
              ),
          ],
        )
      ),
    ),
  );
}


Widget myTableRow({required BuildContext context, required String name, required int cost, required List<Data> questionList, required int questionNumber, required int numberOfQuestionsAnswered, required int startValue}){
  Random random = Random();
  return Material(
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)),),
    color: Colors.grey[400],
    child: Container(
      padding: EdgeInsets.all(5.0),
      //color: Colors.white10,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text('$name', style: TextStyle(fontSize: 18),),
          ElevatedButton(
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)),),
            ),
            onPressed: (){
              context.read<Stars>().decrementStars(value: cost);
              switch(name){
                case 'Восстановить жизнь:':
                  context.read<Health>().addHealth();
                  break;
                case 'Подсказка 50/50:':
                  print('подсказка');
                  break;
                case 'Пропустить вопрос:':
                  questionList.removeAt(questionNumber);
                  int r = random.nextInt(questionList.length - 1);
                  Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => GamePage(questionNumber: r, questionList: questionList, numberOfQuestionsAnswered: numberOfQuestionsAnswered,startValue: startValue,)));
                  break;
              }
            },
            child: Container(child: Row(
              children: [
                Text('$cost', style: TextStyle(fontSize: 18),),
                Icon(Icons.star)
              ],
            )),
          ),
        ],
      ),
    ),
  );
}
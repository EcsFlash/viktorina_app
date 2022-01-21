
import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:viktorina_app/Pages/Home.dart';

import 'package:viktorina_app/Tools/Helper.dart';
import 'package:provider/provider.dart';
import 'package:viktorina_app/data/data.dart';

import 'package:viktorina_app/data/stars.dart';
import 'package:viktorina_app/main.dart';


// class HelpButton extends StatelessWidget {
//   final List questionList;
//   final int questionNumber;
//   final int numberOfQuestionsAnswered;
//   final int startValue;
//   HelpButton({required this.questionList, required this.questionNumber, required this.numberOfQuestionsAnswered, required this.startValue});
//   @override
//   Widget build(BuildContext context) {
//     print('${questionList[questionNumber].answers}');
//     return Container(
//       child: IconButton(
//           onPressed: (){
//             MyApp.starsError.setUp();
//             showDialog(context: context, builder: (_) => helpMenu(context: context, questionList: questionList, questionNumber: questionNumber, numberOfQuestionsAnswered: numberOfQuestionsAnswered, startValue: startValue,));
//           },
//           icon: Icon(Icons.help_outline)
//       ),
//     );
//   }
// }
class StarsError {
  String error = '';
  StreamController<String> _streamController = StreamController<String>.broadcast();

  Stream<String> get getError => _streamController.stream.asBroadcastStream();

  void throughtError() {
    _streamController.add('Недостаточно звезд');
  }
  void setUp(){
    _streamController.add(error);
  }
}

//var moneyError = new  StreamController<String>.broadcast();

// Widget helpMenu({required BuildContext context, required List questionList, required int questionNumber, required int numberOfQuestionsAnswered, required int startValue,}){
//   print('${questionList[questionNumber].answers}');
//   return Dialog(
//     backgroundColor: Colors.transparent,
//     child: Material(
//       shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(10)),),
//       color: Colors.lightBlueAccent,
//       child: Container(
//         height: Helper.getHeight(factor: 0.65, context: context),
//         width: Helper.getWidth(factor: 1.5, context: context),
//         clipBehavior: Clip.none,
//         color: Colors.transparent,
//         child: Column(
//           children: [
//              Padding(
//                padding: const EdgeInsets.only(top: 10.0),
//                child: Text("Помощь", style: TextStyle(fontSize: 18),),
//              ),
//             Padding(
//               padding: const EdgeInsets.only(top: 6.0, bottom: 4.0, left: 4.0, right: 4.0),
//                 child: Material(
//                     child: Container(
//                         padding: EdgeInsets.only(right: 10, left: 10, top: 25),
//                         height: Helper.getHeight(factor: 0.59, context: context),
//                         width: Helper.getWidth(factor: 1, context: context),
//                         child: Center(
//                           child: Column(
//                             children: [
//                               myTableRow(name: 'Восстановить жизнь:', cost: 10, context: context, questionNumber: questionNumber, questionList: questionList, numberOfQuestionsAnswered: numberOfQuestionsAnswered, startValue: startValue,),
//                               SizedBox(height: Helper.getHeight(context: context, factor: 0.01,),),
//                               myTableRow(name: '50/50:', cost: 10, context: context, questionNumber: questionNumber, questionList: questionList, numberOfQuestionsAnswered: numberOfQuestionsAnswered, startValue: startValue,),
//                               SizedBox(height: Helper.getHeight(context: context, factor: 0.01),),
//                               myTableRow(name: 'Пропустить вопрос:', cost: 10, context: context, questionNumber: questionNumber, questionList: questionList, numberOfQuestionsAnswered: numberOfQuestionsAnswered, startValue: startValue,),
//                               SizedBox(height: Helper.getHeight(context: context, factor: 0.01),),
//                               StreamBuilder<String>(
//                                   initialData: ' ',
//                                 stream: MyApp.starsError.getError,
//                                 builder: (context, snapshot) {
//                                   return Text(snapshot.data!);
//                                 }
//                               ),
//                               Expanded(
//                                 child: Container(
//
//                                     child: Align(
//                                             alignment: Alignment.bottomCenter,
//                                             child: ElevatedButton(
//                                                 style: ElevatedButton.styleFrom(
//                                                   primary: Colors.red,
//                                                   shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)),),
//                                                 ),
//                                                 onPressed: (){
//
//                                                   Navigator.pushAndRemoveUntil(context, MaterialPageRoute(builder: (_) => Home()), (route) => false);
//                                                 },
//                                                 child: Text('Выйти на главный экран')
//                                             ),
//                                           ),
//                                   ),
//                                 ),
//                             ],
//                           ),
//                         )
//                     ),
//                     shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)),),
//                 ),
//               ),
//           ],
//         )
//       ),
//     ),
//   );
// }



// Widget myTableRow({required BuildContext context, required String name, required int cost, required List questionList, required int questionNumber, required int numberOfQuestionsAnswered, required int startValue}){
//   Random random = Random();
//   print('${questionList[questionNumber].answers}');
//   return Material(
//     shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)),),
//     color: Colors.grey[400],
//     child: Container(
//       padding: EdgeInsets.all(5.0),
//       //color: Colors.white10,
//       child: Row(
//         mainAxisAlignment: MainAxisAlignment.spaceBetween,
//         children: [
//           Text('$name', style: TextStyle(fontSize: 18),),
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               shape: RoundedRectangleBorder(borderRadius: BorderRadius.all(Radius.circular(20)),),
//             ),
//             onPressed: (){
//               // context.read<Stars>().decrementStars(value: cost);
//               switch(name){
//                 case 'Восстановить жизнь:':
//                   if(Provider.of<Stars>(context, listen: false).getStars >= cost){
//                     context.read<Stars>().decrementStars(value: cost);
//                     context.read<Health>().addHealth();
//                   }
//                   else{
//                     MyApp.starsError.throughtError();
//                     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Не верно! Попробуй еще раз!', ), backgroundColor: Colors.red, duration: Duration(milliseconds: 700),));
//                   }
//                   break;
//                 case '50/50:':
//                   if(Provider.of<Stars>(context, listen: false).getStars >= cost) {
//                     context.read<Stars>().decrementStars(value: cost);
//                     showDialog(context: context,
//                         builder: (_) =>
//                             Clue50_50(context: context,
//                                 questionList: questionList,
//                                 questionNumber: questionNumber));
//                   } else {
//                     MyApp.starsError.throughtError();
//                     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Не верно! Попробуй еще раз!', ), backgroundColor: Colors.red, duration: Duration(milliseconds: 700),));
//                   }
//
//                   break;
//                 case 'Пропустить вопрос:':
//                   if(Provider.of<Stars>(context, listen: false).getStars >= cost) {
//                     context.read<Stars>().decrementStars(value: cost);
//                     questionList.removeAt(questionNumber);
//                     int r = random.nextInt(questionList.length - 1);
//                     Navigator.pushAndRemoveUntil(context, MaterialPageRoute(
//                         builder: (BuildContext context) =>
//                             GamePage(questionNumber: r,
//                               questionList: questionList,
//                               numberOfQuestionsAnswered: numberOfQuestionsAnswered,
//                               startValue: startValue,)), (route) => false,);
//                   } else {
//                     MyApp.starsError.throughtError();
//                     ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text('Не верно! Попробуй еще раз!', ), backgroundColor: Colors.red, duration: Duration(milliseconds: 700),));
//                   }
//                   break;
//               }
//             },
//             child: Container(child: Row(
//               children: [
//                 Text('$cost', style: TextStyle(fontSize: 18),),
//                 Icon(Icons.star)
//               ],
//             )),
//           ),
//         ],
//       ),
//     ),
//   );
// }
//  List<String> randomAnswer({required List questionList, required int questionNumber,}){
//    Random random = Random();
//    String answer1 = questionList[questionNumber].answer;
//    List<String> answers2 = [...questionList[questionNumber].answers];
//    answers2.remove(answer1);
//    String answer2 = answers2[random.nextInt(3)];
//    List<String> answers = [];
//    print('${questionList[questionNumber].answers}');
//    if (answer1.length + random.nextInt(50) <= answer2.length + random.nextInt(50)){
//      answers = [answer1, answer2];
//      return answers;
//    }
//    else{
//      answers = [answer2, answer1];
//      return answers;
//    }
//
//  }


// Widget Clue50_50({required BuildContext context, required List questionList, required int questionNumber,}){
//   List<String> listOfAnswers = randomAnswer(questionList: questionList, questionNumber: questionNumber);
//   return AlertDialog(
//     title: Center(child: Text('Подсказка 50 на 50')),
//     content: Text('${listOfAnswers[0]} или ${listOfAnswers[1]} '),
//     actions: <Widget>[
//       TextButton(
//         child: Text('ок'),
//         onPressed: () {
//           print('${questionList[questionNumber].answers}');
//           Navigator.of(context).pop(); // Dismiss alert dialog
//         },
//       ),
//     ],
//   );
// }

//questionList[questionNumber].answers[]
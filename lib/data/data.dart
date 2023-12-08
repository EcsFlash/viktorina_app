import 'dart:core';
import 'dart:math';

import 'country_by_flag.dart';

// class LongQuestion{
//   LongQuestion({required this.img, required this.question, required this.answers, required this.answer });
//   String img;
//   List<String> answers;
//   String answer;
//   String question;
// }
// class LongQuestion2{
//   LongQuestion2({required this.img, required this.answer, required this.answers});
//   late String img;
//   String question = 'Флаг какой страны показан на картинке?';
//   late String answer;
//   final List<String> answers;
// }
// class ByPic{
//   late final String cityName;
//   late String question = 'Это $cityName?';
//   final String answer;
//   List<String> answers = ['Да', 'Нет'];
//   final String img;
//   final String author;
//   ByPic({required this.cityName, required this.answer, required this.img, required this.author});
//
// }

class Question{
  String cityName;
  String question;
  final type; //l - long, l2 - long, s - short
  late String question2 = 'Флаг какой страны показан \n на картинке?';
  late String question3 = 'Это $cityName?';
  final List<String> answers;
  final String img;
  String author;
  final String answer;
  Question({required this.img, required this.answer, required this.type,  this.answers = const ['Да', 'Нет'], this.question = '', this.cityName = '', this.author = '', });
}

import 'package:flutter/material.dart';
class QuestionCounter extends StatelessWidget {
  final int numberOfQuestionsAnswered;
  final int startValue;
  QuestionCounter({required this.numberOfQuestionsAnswered, required this.startValue});
  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0)
      ),
        child: Container(
          child: Column(
            children: [
              Text('Вопрос ${numberOfQuestionsAnswered + 1}/$startValue')
            ],
          ),
        )
    );
  }
}

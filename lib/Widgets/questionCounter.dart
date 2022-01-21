import 'package:flutter/material.dart';
class QuestionCounter extends StatelessWidget {
  final String n;
  QuestionCounter(this.n);
  @override
  Widget build(BuildContext context) {
    return Material(
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30.0)
      ),
        child: Container(
          child: Column(
            children: [
              Text('Вопрос $n')
            ],
          ),
        )
    );
  }
}

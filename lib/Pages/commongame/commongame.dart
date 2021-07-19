import 'package:flutter/material.dart';
import 'package:viktorina_app/Tools/Helper.dart';
import 'package:viktorina_app/data/capital_of_countries.dart';

class CommonGamePage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    print(CapitalOfCoutries().q1.img);
    return SafeArea(
      child: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Image.asset('${CapitalOfCoutries().q1.img}'),
                Text('${CapitalOfCoutries().q1.question}'),
                Container(
                  color: Colors.red,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        TextButton(
                          onPressed: () {
                            print('1');
                          },
                          child: Text('ffff'),
                        ),
                        TextButton(
                          onPressed: () {
                            print('2');
                          },
                          child: Text('gggg'),
                        ),
                      ],
                    ),
                  ),

                Container(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      TextButton(
                        onPressed: () {
                          print('3');
                        },
                        child: Text('hhhh'),
                      ),
                      TextButton(
                        onPressed: () {
                          print('4');
                        },
                        child: Text('jjjj'),
                      )
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
import 'package:flutter/material.dart';

import '../Home.dart';
class GameOver extends StatelessWidget {
  const GameOver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("Игра окончена!", style: TextStyle(fontSize: 20),),
            ElevatedButton(
                onPressed: (){
              Navigator.pushReplacement(context, MaterialPageRoute(builder: (BuildContext context) => Home()));
              },
                child: Text("На главную")
            )
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:geoquiz/Pages/gameLogic.dart';
import 'package:geoquiz/Tools/Helper.dart';
import 'package:geoquiz/Widgets/counter.dart';
import 'package:geoquiz/Widgets/healthCounter.dart';
import 'package:geoquiz/Widgets/questionCounter.dart';
import 'package:geoquiz/data/data.dart';

import 'Home.dart';

class GameUI extends StatefulWidget {
  final bool coc;
  final bool cbp;
  final bool cbf;
  GameUI({Key? key, required this.coc, required this.cbf, required this.cbp}) : super(key: key);


  @override
  State<GameUI> createState() => _GameUIState(coc: coc, cbf: cbf, cbp: cbp);
}

class _GameUIState extends State<GameUI> {
  final bool coc;
  final bool cbp;
  final bool cbf;

  _GameUIState({required this.coc, required this.cbf, required this.cbp});

  GameLogic gameLogic = GameLogic();


  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    onInit();
  }

  Future<void> onInit() async {
    await gameLogic.setStars();
    gameLogic.setQuestionList(coc: coc, cbf: cbf, cbp: cbp);
    gameLogic.getQuestion();
    await gameLogic.setHealth();
    gameLogic.gameStart();
    gameLogic.questionStream.listen((event) {
      print('bb ' + event.toString());
    });
    gameLogic.gameOverStream.listen((event) {
      print(event);
      if (event) {
        print(event);
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (BuildContext context) => Home(),
          ),
        );
      }
    }
    );
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: SafeArea(
        child: Scaffold(
          body: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  padding: EdgeInsets.all(Helper.getHorizontalPadding(
                      context: context, factor: 0.04)),
                  child: Row(
                    children: [
                      StreamBuilder<int>(
                          stream: gameLogic.starStream,
                          builder: (context, snapshot) {
                            return Counter(stars: snapshot.data ?? 0);
                          }
                      ),
                      Expanded(child: Container()),

                      Expanded(child: Container()),
                      StreamBuilder<int>(
                          initialData: 0,
                          stream: gameLogic.healthStream,
                          builder: (context, snapshot) {
                            return HealthCounter(health: snapshot.data ?? 0);
                          }
                      ),

                    ],
                  ),

                ),
                SizedBox(
                  height: Helper.getHeight(context: context, factor: 0.015),
                ),
                StreamBuilder<String>(
                  stream: gameLogic.questionCounterStream,
                  builder: (context, snapshot) {
                    return QuestionCounter(snapshot.data ?? '0');
                  },
                ),
                StreamBuilder<Question>(
                    stream: gameLogic.questionStream,
                    builder: (context, snapshot) {
                      if (snapshot.hasError) {
                        return Text('Something went wrong');
                      }
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return Text("Загрузка");
                      }
                      if (snapshot.data != null) {
                        return Column(
                            children: [
                              Image.asset(snapshot.data!.img,
                                width: Helper.getWidth(
                                    context: context, factor: 0.85),
                                height: Helper.getHeight(
                                    context: context, factor: 0.35),),
                              SizedBox(height: Helper.getHeight(
                                  context: context, factor: 0.05),),

                              if(snapshot.data!.type == 'l') ...[
                                Text(snapshot.data!.question,
                                  style: TextStyle(fontSize: 20),),
                                SizedBox(
                                  height: Helper.getHeight(context: context, factor: 0.08),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: Helper.getHorizontalPadding(
                                          context: context, factor: 0.05)),
                                  child: Row(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .center,
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              elevation: 30.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30)),
                                              ),
                                              primary: Colors.deepOrange
                                          ),
                                          onPressed: () =>
                                              gameLogic.onAnswer(
                                                  snapshot.data!.answers[0]),
                                          child: Text(
                                              '${snapshot.data!.answers[0]}'),
                                        ),
                                      ),
                                      Expanded(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              elevation: 30.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30)),
                                              ),
                                              primary: Colors.deepOrange
                                          ),
                                          onPressed: () =>
                                              gameLogic.onAnswer(
                                                  snapshot.data!.answers[1]),
                                          child: Text(
                                              '${snapshot.data!.answers[1]}'),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                SizedBox(height: Helper.getHeight(
                                    context: context, factor: 0.1),),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: Helper.getHorizontalPadding(
                                        context: context, factor: 0.05,),
                                      right: Helper.getHorizontalPadding(
                                        context: context, factor: 0.05,),
                                      bottom: Helper.getHorizontalPadding(
                                        context: context, factor: 0.08,)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .center,
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              elevation: 30.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30)),
                                              ),
                                              primary: Colors.deepOrange
                                          ),
                                          onPressed: () =>
                                              gameLogic.onAnswer(
                                                  snapshot.data!.answers[2]),
                                          child: Text(
                                              '${snapshot.data!.answers[2]}'),
                                        ),
                                      ),
                                      // Expanded(
                                      //   child: Container(),
                                      // ),
                                      Expanded(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              elevation: 30.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30)),
                                              ),
                                              primary: Colors.deepOrange
                                          ),
                                          onPressed: () =>
                                              gameLogic.onAnswer(
                                                  snapshot.data!.answers[3]),

                                          child: Text(
                                              '${snapshot.data!.answers[3]}'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],


                              if(snapshot.data!.type == 'l2') ...[
                                Text(snapshot.data!.question2,
                                  style: TextStyle(fontSize: 20), textAlign: TextAlign.center,),
                                SizedBox(
                                  height: Helper.getHeight(context: context, factor: 0.07),
                                ),
                                Container(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: Helper.getHorizontalPadding(
                                          context: context, factor: 0.05)),
                                  child: Row(
                                    //mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              elevation: 30.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30)),
                                              ),
                                              primary: Colors.deepOrange
                                          ),
                                          onPressed: () =>
                                              gameLogic.onAnswer(
                                                  snapshot.data!.answers[0]),
                                          child: Text(
                                              '${snapshot.data!.answers[0]}'),
                                        ),
                                      ),
                                      Expanded(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              elevation: 30.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30)),
                                              ),
                                              primary: Colors.deepOrange
                                          ),
                                          onPressed: () =>
                                              gameLogic.onAnswer(
                                                  snapshot.data!.answers[1]),
                                          child: Text(
                                              '${snapshot.data!.answers[1]}'),
                                        ),
                                      ),

                                    ],
                                  ),
                                ),
                                SizedBox(height: Helper.getHeight(
                                    context: context, factor: 0.08),),
                                Container(
                                  padding: EdgeInsets.only(
                                      left: Helper.getHorizontalPadding(
                                        context: context, factor: 0.05,),
                                      right: Helper.getHorizontalPadding(
                                        context: context, factor: 0.05,),
                                      bottom: Helper.getHorizontalPadding(
                                        context: context, factor: 0.08,)),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment
                                        .center,
                                    children: [
                                      Expanded(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              elevation: 30.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30)),
                                              ),
                                              primary: Colors.deepOrange
                                          ),
                                          onPressed: () =>
                                              gameLogic.onAnswer(
                                                  snapshot.data!.answers[2]),
                                          child: Text(
                                              '${snapshot.data!.answers[2]}'),
                                        ),
                                      ),
                                      // Expanded(
                                      //   child: Container(),
                                      // ),
                                      Expanded(
                                        child: ElevatedButton(
                                          style: ElevatedButton.styleFrom(
                                              elevation: 30.0,
                                              shape: RoundedRectangleBorder(
                                                borderRadius: BorderRadius.all(
                                                    Radius.circular(30)),
                                              ),
                                              primary: Colors.deepOrange
                                          ),
                                          onPressed: () =>
                                              gameLogic.onAnswer(
                                                  snapshot.data!.answers[3]),

                                          child: Text(
                                              '${snapshot.data!.answers[3]}'),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],


                              /*if(snapshot.data!.type == 's') ...[
                                Text('Автор данного фото: ${snapshot.data!
                                    .author}'),
                                Text(snapshot.data!.question3,
                                  style: TextStyle(fontSize: 20),),

                                Container(
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment
                                        .spaceEvenly,

                                    children: [
                                      SizedBox(width: Helper.getWidth(
                                          context: context, factor: 0.07),),
                                      Expanded(
                                        child: Container(
                                          height: Helper.getHeight(
                                              context: context, factor: 0.15),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                elevation: 30.0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius
                                                      .all(Radius.circular(30)),
                                                ),
                                                primary: Colors.deepOrange
                                            ),
                                            onPressed: () =>
                                                gameLogic.onAnswer('Да'),
                                            child: Text('Да'),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: Helper.getWidth(
                                          context: context, factor: 0.07),),
                                      Expanded(
                                        child: Container(
                                          height: Helper.getHeight(
                                              context: context, factor: 0.15),
                                          child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                elevation: 30.0,
                                                shape: RoundedRectangleBorder(
                                                  borderRadius: BorderRadius
                                                      .all(Radius.circular(30)),
                                                ),
                                                primary: Colors.deepOrange
                                            ),
                                            onPressed: () =>
                                                gameLogic.onAnswer('Нет'),
                                            child: Text('Нет'),
                                          ),
                                        ),
                                      ),
                                      SizedBox(width: Helper.getWidth(
                                          context: context, factor: 0.07),),
                                    ],
                                  ),
                                ),


                              ]
*/
                            ]
                        );
                      }


                      return Text('Загрузка...');
                    }
                ),
              ],
            ),
          ),
          floatingActionButton: FloatingActionButton(
            child: Icon(Icons.exit_to_app),
            onPressed: () {
              gameLogic.gameOver();
            },
          ),
        ),
      ),

    );
  }
}
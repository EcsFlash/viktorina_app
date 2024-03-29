import 'package:flutter/material.dart';
import 'package:geoquiz/Pages/ratinggame/options.dart';
import 'package:geoquiz/Tools/constants.dart';
import 'package:geoquiz/Widgets/counter.dart';
import 'package:geoquiz/data/stars.dart';
import '../Tools/Helper.dart';
import 'gameLogic.dart';






class Home extends StatelessWidget {

  Widget build(BuildContext context){
    GameLogic gameLogic = GameLogic();
    // starsCounter()
    gameLogic.setStars();
    return WillPopScope(
      onWillPop: () async {
        return false;
      },
      child: Scaffold(
       body: SafeArea(
         child: Stack(
           children: [
             Container(
               height: Helper.getHeight(context: context, factor: 1),
                 color: Color.fromRGBO(216, 224, 221, 1.0), child: Padding(
                 padding:  EdgeInsets.only(bottom: Helper.getVerticalPadding(context: context, factor: 0.5)),
                 child:
                   Image(image: AssetImage('assets/bg3.png'),),
                 )
             ),

             Container(
             padding: EdgeInsets.all(Helper.getHorizontalPadding(context: context, factor: 0.03)),
             child: Center(
                 child: Column(
                   crossAxisAlignment: CrossAxisAlignment.stretch,
                   mainAxisAlignment: MainAxisAlignment.center,
                   children: [
                     Row(
                       children: [

                         Expanded(child: Container()),
                         StreamBuilder<int>(
                           stream: gameLogic.starStream,
                           builder: (context, snapshot) {
                             return Counter(stars: snapshot.data ?? 0);
                           }
                         ),
                       ],
                     ),
                    SizedBox(height: Helper.getHeight(context: context, factor: 0.25),),
                     Align(
                       alignment: Alignment.center,
                       child: Text(
                         'Географическая \n викторина',
                         style: TextStyle(
                           fontFamily: 'Ustroke',
                           fontSize: 30,
                           color: Colors.black,
                         ),
                         textAlign: TextAlign.center,
                       ),
                     ),
                     SizedBox(height: Helper.getHeight(context: context,factor: 0.15)),
                     // ElevatedButton(
                     //     style: ElevatedButton.styleFrom(
                     //       primary: Constants.buttonColor,
                     //       shape: RoundedRectangleBorder(
                     //         borderRadius: BorderRadius.all(Radius.circular(30)),
                     //       ),
                     //     ),
                     //     onPressed: () {
                     //      Navigator.push(
                     //          context,
                     //          MaterialPageRoute(
                     //              builder: (BuildContext context) => CommonGameOptions()
                     //          )
                     //      );
                     //     },
                     //     child: Container(
                     //         height: Helper.getHeight(context: context, factor: 0.06),
                     //         child: Center(
                     //             child: Text("Обычная игра"),
                     //         ),
                     //    ),
                     // ),
                     SizedBox(height: Helper.getHeight(context: context,factor: 0.01)),
                     ElevatedButton(
                       style: ElevatedButton.styleFrom(
                         primary: Constants.buttonColor,
                         elevation: 30.0,
                         shape: RoundedRectangleBorder(
                           borderRadius: BorderRadius.all(Radius.circular(30)),
                         ),
                       ),
                       onPressed: () {
                         Navigator.push(
                             context,
                             MaterialPageRoute(
                                 builder: (BuildContext context) => RatingGameOptions()
                             ),
                         );
                       },
                       child: Container(
                         height: Helper.getHeight(context: context, factor: 0.06),
                         child: Center(
                             child: Text("Играть"),
                         ),
                       ),
                     ),

                     Expanded(
                       child: Container(),
                     ),
                   ],
                 )
             ),
           ),
      ]
         ),
       ),
      ),
    );
  }
}
import 'package:flutter/material.dart';
import 'package:viktorina_app/Pages/ratinggame/options.dart';
import 'package:viktorina_app/Tools/constants.dart';
import 'package:viktorina_app/Widgets/counter.dart';
import 'package:provider/provider.dart';
import 'package:viktorina_app/data/stars.dart';
import '../Tools/Helper.dart';






class Home extends StatelessWidget {

  Widget build(BuildContext context){
    // starsCounter()
    context.read<Stars>().setStars();
    return Scaffold(
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
                       IconButton(
                         icon: Icon(Icons.flutter_dash),
                         onPressed: () {

                         },
                       ),
                       Expanded(child: Container()),
                       Counter(stars: context.watch<Stars>().getStars),
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
    );
  }
}
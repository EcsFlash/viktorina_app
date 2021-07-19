import 'package:flutter/material.dart';
import 'package:viktorina_app/Pages/commongame/options.dart';
import 'package:viktorina_app/Pages/ratinggame/options.dart';
import 'package:viktorina_app/Tools/constants.dart';
import 'package:viktorina_app/Widgets/counter.dart';
import 'package:provider/provider.dart';
import 'package:viktorina_app/data/stars.dart';
import '../Tools/Helper.dart';



class Home extends StatelessWidget{
  Widget build(BuildContext context){
    return Scaffold(
     body: SafeArea(
       child: Container(
         padding: EdgeInsets.all(Helper.getHorizontalPadding(context: context, factor: 0.03)),
         child: Center(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Counter(context: context, stars: context.watch<Stars>().getStars),
                 Expanded(
                   child: Container(),
                 ),
                 Align(
                   alignment: Alignment.center,
                   child: Text(
                     'Географическая \n викторина',
                     style: TextStyle(
                       fontSize: 30,
                       color: Colors.black,
                     ),
                     textAlign: TextAlign.center,
                   ),
                 ),
                 SizedBox(height: Helper.getHeight(context: context,factor: 0.1)),
                 ElevatedButton(
                     style: ElevatedButton.styleFrom(
                       primary: Constants.buttonColor,
                       shape: RoundedRectangleBorder(
                         borderRadius: BorderRadius.all(Radius.circular(30)),
                       ),
                     ),
                     onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (BuildContext context) => CommonGameOptions()
                          )
                      );
                     },
                     child:Container(
                         height: Helper.getHeight(context: context, factor: 0.06),
                         child: Center(
                             child: Text("Обычная игра"),
                         ),
                    ),
                 ),
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
                         child: Text("Рейтинговая игра"),
                     ),
                   ),
                 ),
                 TextButton(

                   child: Text('test'),
                   onPressed: () {
                     context.read<Stars>().addStars();
                   }
                 ),
                 Expanded(
                   child: Container(),
                 ),
               ],
             )
         ),
       ),
     ),
    );
  }
}
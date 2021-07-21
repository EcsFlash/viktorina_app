import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:viktorina_app/Pages/commongame/options.dart';
import 'package:viktorina_app/Pages/ratinggame/options.dart';
import 'package:viktorina_app/Tools/constants.dart';
import 'package:viktorina_app/Widgets/counter.dart';
import 'package:provider/provider.dart';
import 'package:viktorina_app/data/stars.dart';
import '../Tools/Helper.dart';
import '../main.dart';





class Home extends StatelessWidget {

  Widget build(BuildContext context){
    // starsCounter()
    context.read<Stars>().setStars();
    return Scaffold(
     body: SafeArea(
       child: Container(
         padding: EdgeInsets.all(Helper.getHorizontalPadding(context: context, factor: 0.03)),
         child: Center(
             child: Column(
               crossAxisAlignment: CrossAxisAlignment.stretch,
               mainAxisAlignment: MainAxisAlignment.center,
               children: [
                 Row(
                   children: [
                     IconButton(
                       icon: Icon(Icons.nightlight_round),
                       onPressed: () {

                       },
                     ),
                     Expanded(child: Container()),
                     Counter(stars: context.watch<Stars>().getStars),
                   ],
                 ),
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
                     child: Container(
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
                   onPressed: () async {
                     context.read<Stars>().addStars();
                     //bb = Counter.starValue;
                     //var bb = Counter.
                     //sp.setInt('stars', bb);
                     //print(sp.getInt('stars'));
                     // sp.setString('dark','no');
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
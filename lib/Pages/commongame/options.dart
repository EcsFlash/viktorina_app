import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:viktorina_app/Tools/Helper.dart';
import 'package:viktorina_app/Tools/constants.dart';

import 'commongame.dart';
class CommonGameOptions extends StatefulWidget {
  @override
  _CommonGameOptionsState createState() => _CommonGameOptionsState();
}

class _CommonGameOptionsState extends State<CommonGameOptions> {
  bool countryByPicture = false;
  bool capitalOfCountries = false;
  bool countryByFlag = false;
  bool countryBySight = false;

  @override
  Widget build(BuildContext context) {


    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // SizedBox(height: Helper.getHeight(context: context,factor: 0.2)),
              Padding(
                padding: EdgeInsets.only(top: Helper.getVerticalPadding(context: context, factor: 0.29), bottom: Helper.getVerticalPadding(context: context, factor: 0.29)),
                child: Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Выбери категори-(ю/и)',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
              ),
              // SizedBox(height: Helper.getHeight(context: context,factor: 0.17)),
              Container(
                child: Column(
                  children: [
                    CheckboxListTile(
                      title: Text("Угадай страну по картинке(контуру)"),
                      controlAffinity: ListTileControlAffinity.platform ,
                      value: countryByPicture,
                      onChanged: (bool? val){
                        setState(() {
                          countryByPicture = val!;
                          print(countryByPicture);
                        });
                      },
                      activeColor: Colors.amberAccent,
                      checkColor: Colors.purple,
                    ),
                    CheckboxListTile(
                      title: Text("Угадай столицу страны"),
                      controlAffinity: ListTileControlAffinity.platform ,
                      value: capitalOfCountries,
                      onChanged: (bool? val){
                        setState(() {
                          capitalOfCountries = val!;
                        });
                      },
                      activeColor: Colors.amberAccent,
                      checkColor: Colors.purple,
                    ),
                    CheckboxListTile(
                      title: Text("Угадай страну по флагу"),
                      controlAffinity: ListTileControlAffinity.platform ,
                      value: countryByFlag,
                      onChanged: (bool? val){
                        setState(() {
                          countryByFlag = val!;
                        });
                      },
                      activeColor: Colors.amberAccent,
                      checkColor: Colors.purple,
                    ),
                    CheckboxListTile(
                      title: Text("Угадай страну по достопримечательности"),
                      controlAffinity: ListTileControlAffinity.platform ,
                      value: countryBySight,
                      onChanged: (bool? val){
                        setState(() {
                          countryBySight = val!;
                        });
                      },
                      activeColor: Colors.amberAccent,
                      checkColor: Colors.purple,
                    ),
                  ],
                ),
              ),

               // SizedBox(height: Helper.getHeight(context: context,factor: 0.23)),
               Padding(
                 padding:  EdgeInsets.only(
                   bottom: Helper.getVerticalPadding(context: context, factor: 0.02,),
                   top:Helper.getVerticalPadding(context: context, factor: 0.6,),
                 ),
                 child: ElevatedButton(
                      style: ElevatedButton.styleFrom(
                          primary: Constants.buttonColor,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.all(Radius.circular(30)),
                          )
                      ),
                      onPressed: () {
                        print('ddd');
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (BuildContext context) => CommonGamePage()
                            )
                        );
                      },
                      child: Container(
                        height: Helper.getHeight(context: context, factor: 0.06),
                        child: Center(
                          child: Text("Играть"),
                        ),
                      ),
                  ),
               ),
            ],
          ),
        ),
      ),
    );
  }
}

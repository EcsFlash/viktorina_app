import 'package:flutter/material.dart';
import 'package:viktorina_app/Tools/Helper.dart';
import 'package:viktorina_app/Tools/constants.dart';
class RatingGameOptions extends StatefulWidget {
  @override
  _RatingGameOptionsState createState() => _RatingGameOptionsState();
}

class _RatingGameOptionsState extends State<RatingGameOptions> {
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: Helper.getHeight(context: context,factor: 0.2)),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Выбери категори-(ю/и)',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(height: Helper.getHeight(context: context,factor: 0.18)),
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
                SizedBox(height: Helper.getHeight(context: context,factor: 0.2)),
                ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        primary: Constants.buttonColor,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.all(Radius.circular(30)),
                        )
                    ),
                    onPressed: () {
                      print('ddd');
                      // Navigator.push(
                      //     context,
                      //     MaterialPageRoute(
                      //         builder: (BuildContext context) => CommonGameOptions()
                      //     )
                      // );
                    },
                    child: Container(
                      height: Helper.getHeight(context: context, factor: 0.06),
                      child: Center(
                        child: Text("Играть"),
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


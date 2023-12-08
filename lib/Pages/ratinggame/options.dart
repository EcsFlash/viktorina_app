import 'dart:math';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:geoquiz/Pages/gameUI.dart';
import 'package:geoquiz/Tools/Helper.dart';
import 'package:geoquiz/Tools/constants.dart';


class RatingGameOptions extends StatefulWidget {
  @override
  _RatingGameOptionsState createState() => _RatingGameOptionsState();
}

class _RatingGameOptionsState extends State<RatingGameOptions> {
  bool countryByPicture = false;
  bool capitalOfCountries = false;
  bool countryByFlag = false;
  bool countryBySight = false;
  Random random = Random();
  static const snackBar = SnackBar(
    backgroundColor: Colors.red,
    duration: Duration(milliseconds: 700),
    content: Text('Выберите категорию/категории!'),
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Stack(children: [
          /*Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: ExactAssetImage('assets/bg1.jpg'),
                fit: BoxFit.cover,
              ),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 5.0, sigmaY: 5.0),
              child: Container(
                decoration: BoxDecoration(color: Colors.white.withOpacity(0.0)),
              ),
            ),
          ),*/

          // Container(color: Color.fromRGBO(38, 150, 161, 1.0), child: Padding(
          //   padding:  EdgeInsets.only(top: Helper.getVerticalPadding(context: context, factor: 0.2)),
          //   child:  ColorFiltered(
          //       colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.8), BlendMode.dstATop),
          //       child: Image(image: AssetImage('assets/bg1.jpg'),),
          //   )
          // )),

          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                    height: Helper.getHeight(context: context, factor: 0.2)),
                Align(
                  alignment: Alignment.center,
                  child: Text(
                    'Выбери категории',
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.black,
                    ),
                  ),
                ),
                SizedBox(
                    height: Helper.getHeight(context: context, factor: 0.18)),
                /*CheckboxListTile(
                  title: Text("Угадай страну по фото"),
                  controlAffinity: ListTileControlAffinity.platform,
                  value: countryByPicture,
                  onChanged: (bool? val) {
                    setState(() {
                      countryByPicture = val!;
                      print(countryByPicture);
                    });
                  },
                  activeColor: Colors.amberAccent,
                  checkColor: Colors.purple,
                ),*/
                CheckboxListTile(
                  title: Text("Угадай столицу страны"),
                  controlAffinity: ListTileControlAffinity.platform,
                  value: capitalOfCountries,
                  onChanged: (bool? val) {
                    setState(() {
                      capitalOfCountries = val!;
                    });
                  },
                  activeColor: Colors.amberAccent,
                  checkColor: Colors.purple,
                ),
                CheckboxListTile(
                  title: Text(
                    "Угадай страну по флагу"
                  ),
                  controlAffinity: ListTileControlAffinity.platform,
                  value: countryByFlag,
                  onChanged: (bool? val) {
                    setState(() {
                      countryByFlag = val!;
                    });
                  },
                  activeColor: Colors.amberAccent,
                  checkColor: Colors.purple,
                ),
                SizedBox(
                  height: Helper.getHeight(context: context, factor: 0.2),
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Constants.buttonColor2,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(30)),
                    ),
                  ),
                  onPressed: () {
                    if (countryByFlag ||
                        countryByPicture ||
                        capitalOfCountries) {
                      Navigator.pushAndRemoveUntil(
                        context,
                        MaterialPageRoute(builder: (BuildContext context) {
                          return GameUI(
                            cbf: countryByFlag,
                            cbp: countryByPicture,
                            coc: capitalOfCountries,
                          );
                        }),
                        (route) => false,
                      );
                    } else {
                      ScaffoldMessenger.of(context).showSnackBar(snackBar);
                    }
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
        ]),
      ),
    );
  }

  void dispose() {
    print('dispose');
    super.dispose();
  }
}

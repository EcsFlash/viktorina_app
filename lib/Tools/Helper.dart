import 'package:flutter/material.dart';

class Helper {
  static double getHeight({required BuildContext context,required double factor }){
    double size = MediaQuery.of(context).size.height * factor;
    return size;
  }
  static double getWidth({required BuildContext context,required double factor }){
    double size = MediaQuery.of(context).size.width * factor;
    return size;
  }
  static double getHorizontalPadding({required BuildContext context,required double factor }){
    double size = MediaQuery.of(context).size.width * factor;
    return size;
  }
  static double getVerticalPadding({required BuildContext context,required double factor }){
    double size = MediaQuery.of(context).size.width * factor;
    return size;
  }
}

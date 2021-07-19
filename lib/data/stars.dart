import 'dart:math';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

class Stars extends ChangeNotifier{
  int stars = 0;
  get getStars => stars;
  void addStars(){
    stars = stars + 1;
    notifyListeners();
  }

}
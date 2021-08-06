import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Stars extends ChangeNotifier{
  int stars = 0;
  int get getStars => stars;
  Future<void> addStars  () async {
    stars = stars + 1;
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setInt('stars',stars);
    notifyListeners();
  }
  Future<void> setStars() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    stars = sp.getInt('stars') ?? 0;
    notifyListeners();
  }
}


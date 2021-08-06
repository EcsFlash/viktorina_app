import 'package:flutter/widgets.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Stars extends ChangeNotifier{
  int _stars = 0;
  int get getStars => _stars;
  Future<void> addStars  () async {
    _stars = _stars + 1;
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setInt('stars',_stars);
    notifyListeners();
  }
  Future<void> setStars() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    _stars = sp.getInt('stars') ?? 0;
    notifyListeners();
  }
  Future<void> decrementStars({required int value}) async {
    _stars = _stars - value;
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setInt('stars', _stars);
    notifyListeners();
  }
}


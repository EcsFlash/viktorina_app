
import 'package:flutter/widgets.dart';

class Health extends ChangeNotifier{
  int health= 10;
  int get getHealth => health;
  void decrementHealth(){
    health = health - 1;
    notifyListeners();
  }
  void setHealth(){
    health = 10;
    notifyListeners();
  }
  void addHealth(){
    health = health + 1;
    notifyListeners();
  }
}


import 'dart:async';
import 'dart:math';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:viktorina_app/data/capital_of_countries.dart';
import 'package:viktorina_app/data/country_by_flag.dart';
import 'package:viktorina_app/data/country_by_picture.dart';
import 'package:viktorina_app/data/data.dart';

class GameLogic {
  int _numberOfQuestions = 0;
  int _numberOfCurrentQuestion = 1;
  int _stars = 0;
  int _health = 0;
  List questionList = [];
  var currentQuestion;
  bool isGameOver = false;
  Random random = Random();

  StreamController<String> _questionCounterStreamController = StreamController<String>.broadcast();
  StreamController<int> _starStreamController = StreamController<int>.broadcast();
  StreamController<Question> _questionStreamController = StreamController<Question>.broadcast();
  StreamController<int> _healthStreamController = StreamController<int>.broadcast();
  StreamController<bool> _gameOverStreamController = StreamController<bool>.broadcast();

  Stream<String> get questionCounterStream => _questionCounterStreamController.stream;
  Stream<bool> get gameOverStream => _gameOverStreamController.stream;
  Stream<int> get starStream => _starStreamController.stream;
  Stream<int> get healthStream => _healthStreamController.stream;
  Stream<Question>  get questionStream => _questionStreamController.stream;

  Future<void> setStars() async {
    SharedPreferences sp = await SharedPreferences.getInstance();
    _stars = sp.getInt('stars') ?? 0;
    _starStreamController.add(_stars);
  }
  Future<void> addStars  () async {
    _stars = _stars + 1;
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setInt('stars',_stars);
    _starStreamController.add(_stars);
  }
  Future<void> decrementStars({required int value}) async {
    _stars = _stars - value;
    SharedPreferences sp = await SharedPreferences.getInstance();
    sp.setInt('stars', _stars);
    _starStreamController.add(_stars);
  }
  Future<void> setHealth() async{
    print('setting health');
    _health = 10;
    _healthStreamController.add(_health);
  }
  void addHealth(){
    _health = _health + 1;
    _healthStreamController.add(_health);
  }
  void decrementHealth(){
    if(_health > 1) {
      _health = _health - 1;
    }
    else{
      gameOver();
    }
    _healthStreamController.add(_health);
  }

  void setQuestionList({required bool coc,required bool cbf, required bool cbp}){
    if(coc){
      questionList = questionList + CapitalOfCountries().b;
    }
    if(cbf){
      questionList = questionList + CountryByFlag().b;
    }
    if(cbp){
      questionList = questionList + CityByPic().b;
    }
    _numberOfQuestions = questionList.length;
    print('set question list');
  }

  void getQuestion(){
    questionStream.listen((event) {print('ss'+event.toString());});
    if(questionList.length == 0){
      gameOver();
    }
    if(questionList.length == 1){
      _questionStreamController.add(questionList.first);
      print(questionList.first);
      currentQuestion = questionList.first;
      questionList.removeAt(0);
      gameOver();
    }
    if(questionList.length > 1){
      int num = random.nextInt(questionList.length);
      _questionStreamController.add(questionList[num]);
      currentQuestion = questionList[num];
      questionList.removeAt(num);
    }
    print('getting question');
    questionCounter();
  }

  void onAnswer(String answer){
    if(currentQuestion.answer == answer){
      addStars();
      getQuestion();
      incrementNumOfAnsweredQuestion();
    }
    else{
      decrementHealth();
      getQuestion();
      incrementNumOfAnsweredQuestion();
    }
  }

  void gameStart(){
    _gameOverStreamController.add(false);
  }
  void gameOver(){
    _gameOverStreamController.add(true);
  }
  void incrementNumOfAnsweredQuestion(){
    _numberOfCurrentQuestion += 1;
    questionCounter();
  }
  void questionCounter(){
    _questionCounterStreamController.add((_numberOfCurrentQuestion).toString() +'/'+_numberOfQuestions.toString());
  }
}
import 'package:flutter/material.dart';

class LogInP extends ChangeNotifier{
  int i=0;

  void nextStep(){
    i++;
    notifyListeners();
  }

  void backStep(){
    i--;
    notifyListeners();
  }

  void jumpStep(int index){
    i = index;
    notifyListeners();
  }
}
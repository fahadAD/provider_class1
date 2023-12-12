
import 'package:flutter/material.dart';
class Counters extends ChangeNotifier{
  int counter=0;
void plus(){
  counter++;
  notifyListeners();
}
  void minus(){
    counter--;
    notifyListeners();
  }
  void restart(){
    counter=0;
    notifyListeners();
  }
}

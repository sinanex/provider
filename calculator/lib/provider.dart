import 'package:flutter/material.dart';

class Calulate extends ChangeNotifier{
  int calculateValue = 0;
  bool error = false;
  void addNumber (frist,secount){
try {
     calculateValue = int.parse(frist)+int.parse(secount);
} catch (e) {
     error = true;
}
    notifyListeners();
  }

  
}
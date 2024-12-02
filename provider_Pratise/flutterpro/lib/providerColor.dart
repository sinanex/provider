import 'package:flutter/material.dart';

class ColorChange extends ChangeNotifier{
  Color iconColor = Colors.black;
  bool aa = false;

  void changeColor(){
  if(aa == false){
    aa = true;
    iconColor = Colors.red;
  }else{
    aa= false;
    iconColor = Colors.black;
  }

    notifyListeners();
  }
}
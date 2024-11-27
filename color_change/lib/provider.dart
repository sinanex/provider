import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ChnageColor extends ChangeNotifier{
  Color containerColor = Colors.black;

  void green(){
     containerColor = Colors.green;
     notifyListeners();
  }
  void red(){
      containerColor = Colors.red;
      notifyListeners();
  }
}
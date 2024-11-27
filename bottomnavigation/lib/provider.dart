import 'package:flutter/material.dart';

// ignore: camel_case_types
class bottomNav extends ChangeNotifier{
  int currentIndex = 0;

  set chnageindex(int index){
    currentIndex = index;
    notifyListeners();
  }
}
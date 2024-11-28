import 'package:flutter/material.dart';

class theme extends ChangeNotifier {
  ThemeData themeColor = ThemeData.light();
  bool lightTheme = true;
  String text = 'Light Theme';
  void changeTheme(bool value) {
    lightTheme = value;
    if (lightTheme == true) {
      text = 'Dark Theme';
 themeColor = ThemeData.dark();
    } else {
      text = 'Light Theme';
 themeColor = ThemeData.light();
    }
    notifyListeners();
  }
}

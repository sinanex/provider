import 'package:flutter/material.dart';

class colorSelector extends ChangeNotifier {
  List<Color> containerColor = [
    Colors.red,
    Colors.black,
    Colors.blue,
    Colors.green
  ];

  String? selected;
  Color? conColor;
  void changeColor(String value, int index) {
    selected = value;

    if (selected == 'red') {
      conColor = containerColor[0];
    } else if (selected == 'black') {
      conColor = containerColor[1];
    } else if (selected == 'blue') {
      conColor = containerColor[2];
    } else if (selected == 'green') {
      conColor = containerColor[3];
    }
    notifyListeners();
  }
}

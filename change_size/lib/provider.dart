import 'package:flutter/material.dart';

class changeContainer extends ChangeNotifier{
    double heightWidth = 200.0;
    Color changeColor = Colors.red;

    void changeSize(){
     if(heightWidth == 200.0){
      heightWidth = 100.0;
      changeColor = Colors.red;
     }else{
      heightWidth = 200.0;
            changeColor = Colors.green;
     }
      notifyListeners();
    }

}
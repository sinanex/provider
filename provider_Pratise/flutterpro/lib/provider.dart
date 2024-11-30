import 'dart:io';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

class checkbox extends ChangeNotifier {
  bool check = true;
  ThemeData themechange = ThemeData.light();

  void change(bool checkValue) {
    check = checkValue;
    if (check == true) {
      themechange = ThemeData.dark();
    }else{
            themechange = ThemeData.light();
    }
    notifyListeners();
  }
}

class radioBtn extends ChangeNotifier {
  String? selected;
  radioBtnchange(String valuee) {
    selected = valuee;
    notifyListeners();
  }
}

class switchButton extends ChangeNotifier {
  bool on = false;
  changeSwitch(bool value) {
    on = value;
    notifyListeners();
  }
}
class containerSize extends ChangeNotifier{
  double conwidth = 100;

  changeHeigth(){

    if(conwidth == 100){
          conwidth = 300;
    }else{
      conwidth =100;
    }
    notifyListeners();
  }
}

class bottomAppBar extends ChangeNotifier{
  int currentIndex = 0;

  chageindex(int value){
    currentIndex = value;
    notifyListeners();
  }
}

class imageddProvider extends ChangeNotifier{
  File? imagePath;
    void imageAdd() async{
    final image =await  ImagePicker().pickImage(source: ImageSource.gallery);
      if(image != null){
        imagePath = File(image.path);
      }
  }
}
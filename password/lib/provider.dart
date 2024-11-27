import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Password extends ChangeNotifier{
    bool sercure = true;
    Icon iconPassword = Icon(CupertinoIcons.eye);

    void sercurePassword(){
      if(sercure==true){
        sercure = false;
        iconPassword = Icon(CupertinoIcons.eye_slash);
      }else{
        sercure = true;
        iconPassword = Icon(CupertinoIcons.eye);
      }
      notifyListeners();
    }
}
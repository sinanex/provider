import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutterpro/provider.dart';
import 'package:provider/provider.dart';

class Bottombar  extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      bottomNavigationBar: Consumer<bottomAppBar>(
        builder: (context, bottomnav, child) =>  BottomNavigationBar(
          selectedItemColor: Colors.red,
          currentIndex: bottomnav.currentIndex,
          onTap: (value) {
            bottomnav.chageindex(value);
          },
          items: [
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.home),label: 'home'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.search),label: 'search'),
          BottomNavigationBarItem(icon: Icon(CupertinoIcons.settings),label: 'settings')
        ]),
      ),
    );
  } 
  
}
import 'package:change_size/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(child: Consumer<changeContainer>(builder:(context, value, child) {
      return  Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          GestureDetector(
            onTap: () {
              value.changeSize();
            },
            child: Container(
              width: value.heightWidth,
              height: value.heightWidth,
              color: value.changeColor,
              
            ),
          ),
        ],
      );
    },));
  }
}
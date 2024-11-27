import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:password/home.dart';
import 'package:password/provider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(ChangeNotifierProvider(
    create: (context) => Password(),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      theme: CupertinoThemeData(
        scaffoldBackgroundColor: Colors.white
      ),
      home: HomePage(),
    );
  }
}
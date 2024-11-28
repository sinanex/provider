import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themechange/home.dart';
import 'package:themechange/provider.dart';

void main(){
  runApp(ChangeNotifierProvider(
    create: (context) => theme(),
    child: MyApp()));

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Provider.of<theme>(context).themeColor,
      home: HomePage(),
    );
  }
}
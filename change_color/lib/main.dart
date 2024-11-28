import 'package:change_color/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(ChangeNotifierProvider(
    create: (context) => changeColors(),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Homepage(),
    );
  }
}

class Homepage extends StatelessWidget {
  const Homepage({super.key});

  @override
  Widget build(BuildContext context) {
      int index =  Provider.of<changeColors>(context).index;
      Color color = Provider.of<changeColors>(context,).containerColor[index];
    return Scaffold(
      appBar: AppBar(),
      body: Center(child: 
      GestureDetector(
        onTap: () {
          Provider.of<changeColors>(context,listen: false).colorchn();
          Provider.of<changeColors>(context,listen: false).indexchange();
          
        },
        child: CircleAvatar(
        radius: 100,
          backgroundColor:  color,
        ),
      ),),
    );
  }
}
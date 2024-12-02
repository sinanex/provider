import 'package:flutter/material.dart';
import 'package:flutterpro/providerColor.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => ColorChange(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ColorChange(),
      child: MaterialApp(
        home: HomePage(),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: IconButton(
      icon: Icon(
        Icons.favorite,size: 50,
        color: Provider.of<ColorChange>(context).iconColor,
      ),
      onPressed: () {
        Provider.of<ColorChange>(context,listen: false).changeColor();
      },
    )));
  }
}

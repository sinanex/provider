import 'package:change_size/home.dart';
import 'package:change_size/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(ChangeNotifierProvider(
    create: (context) => changeContainer(),
    child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      home: HomePage(),
      theme: CupertinoThemeData(
        textTheme: CupertinoTextThemeData()
      ),
    );
  }
}


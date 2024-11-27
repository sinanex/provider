import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:provider_base/provider.dart';

void main(){
  runApp(ChangeNotifierProvider(
    create: (context) => CounterApp(),
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      debugShowCheckedModeBanner: false,
      theme: CupertinoThemeData(
          textTheme: CupertinoTextThemeData(primaryColor: Colors.white)),
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Consumer<CounterApp>(
      builder: (context, value, child) {
        return Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(value.counter.toString(),style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20
            ),),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      value.increment();
                    }, icon: Icon(CupertinoIcons.add)),
                IconButton(
                    onPressed: () {
                      value.reset();
                    },
                    icon: Icon(CupertinoIcons.refresh_thick)),
                IconButton(
                    onPressed: () {
                      value.decrement();
                    },
                    icon: Icon(CupertinoIcons.minus)),
              ],
            )
          ],
        );
      },
    ));
  }
}

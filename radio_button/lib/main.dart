import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:radio_button/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => colorSelector(), child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Consumer<colorSelector>(
        builder: (context, colorSelectorPro, child) => Column(
          children: [
            ListTile(
              title: Text("red"),
              leading: Radio(
                value: 'red',
                groupValue: colorSelectorPro.selected,
                onChanged: (value) {
                  colorSelectorPro.changeColor(value!,0);
                },
              ),
            ),
            ListTile(
              title: Text("black"),
              leading: Radio(
                value: 'black',
                groupValue: colorSelectorPro.selected,
                onChanged: (value) {
                  colorSelectorPro.changeColor(value!,1);
                },
              ),
            ),
            ListTile(
              title: Text("blue"),
              leading: Radio(
                value: 'blue',
                groupValue: colorSelectorPro.selected,
                onChanged: (value) {
                  colorSelectorPro.changeColor(value!,2);
                },
              ),
            ),
            ListTile(
              title: Text("green "),
              leading: Radio(
                value: 'green',
                groupValue: colorSelectorPro.selected,
                onChanged: (value) {
                  colorSelectorPro.changeColor(value!,3);
                },
              ),
            ),
            Container(
              width: 100,
              height: 100,
              color: colorSelectorPro.conColor,
            ),
            
          ],
        ),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:flutterpro/bottomBar.dart';
import 'package:flutterpro/image.dart';
import 'package:flutterpro/provider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => radioBtn(),),
        ChangeNotifierProvider(create: (context) => checkbox(),),
        ChangeNotifierProvider(create: (context) => switchButton(),),
        ChangeNotifierProvider(create: (context) => containerSize(),),
        ChangeNotifierProvider(create: (context) => bottomAppBar()),
        ChangeNotifierProvider(create: (context) => imageddProvider()),
      ],
      child: Consumer<checkbox>(
        builder: (context, value, child) =>  MaterialApp(
          debugShowCheckedModeBanner: false,
          theme: value.themechange,
          home: ImagePage(),
        ),
      ),
    );
  }
}
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(body: Column(
      mainAxisAlignment: MainAxisAlignment.center,
   children: [

    Consumer<checkbox>(
      builder: (context, check, child) =>  Checkbox(value: check.check, onChanged: (value) {
       check.change(value!);
      },),
    ),
    Consumer<radioBtn>(
      builder: (context, radiobtn, child) => 
 Column(
   children: [
     RadioListTile(
      title: Text("data"),
      value: 'selct 1', groupValue: radiobtn.selected, onChanged: (value) {
      radiobtn.radioBtnchange(value!);
     },),
   RadioListTile(value: 'selct 2', groupValue: radiobtn.selected, onChanged: (value) {
      radiobtn.radioBtnchange(value!);
     },),
     Consumer<switchButton>(
      builder: (context, switchBtn, child) => 
Switch(value: switchBtn.on, onChanged: (value) {
            switchBtn.changeSwitch(value);
       },),
     ),
      Consumer<containerSize>
      (
        builder: (context, value, child) => GestureDetector(
          onTap: () =>
            value.changeHeigth()
          ,
          child: Container(
            width: value.conwidth,
            height: 100,
            color: Colors.black,
          ),
        )),
   ],
 )),
   ],
    ),);
  }
}
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:list/provider.dart';
import 'package:provider/provider.dart';

void main(){
  runApp(ChangeNotifierProvider(
    create: (context) => printNumber(),
    child: MyApp()));
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(child: Column(
      children: [
        Expanded(
          child: Consumer<printNumber>(
            builder: (context, value, child) =>  ListView.builder(
              itemCount: value.arr.length,
              itemBuilder: (context, index) {
                
              return CupertinoListTile(
            title: Text(value.arr[index].toString()),
              );
            },),
          ),
        ),
       Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
         children: [
           ElevatedButton(onPressed: (){
            Provider.of<printNumber>(context,listen: false).print();
           }, child: Text("print")),
         ],
       ),
       ElevatedButton(onPressed: (){
            Provider.of<printNumber>(context,listen: false).clear();
           }, child: Text("clear")),
         
    
      ],
    ));
  }
}
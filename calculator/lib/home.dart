import 'package:calculator/provider.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
   TextEditingController fristNumber = TextEditingController();
   TextEditingController secoundNumber = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Consumer<Calulate>(
          builder: (context, value, child) {
            return  Column(
            children: [
              const SizedBox(height: 50,),
              TextField(
                controller: fristNumber,
                decoration: const InputDecoration(
                  hintText: 'enter a number',
                  border: OutlineInputBorder()
                ),
              ),
              const SizedBox(height: 10,),
             TextField(
              controller: secoundNumber,
                decoration: const InputDecoration(
                  hintText: 'enter a number',
                  border: OutlineInputBorder()
                ),
              ),
              ElevatedButton(onPressed: (){
                  final frist = fristNumber.text;
                  final secound = secoundNumber.text;
                  if(value.error == true){
                    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(content: Text("only number")));
                  }
                  value.addNumber(frist, secound);
              }, child: const Text("submit")),
               Text(value.calculateValue.toString()),
            ],
          );
          },
        ),
      ),
    );
  }
}
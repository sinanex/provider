import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:themechange/provider.dart';

class HomePage extends StatelessWidget {
   HomePage({super.key});
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<theme>(
         builder: (context, themeProvider, child) => 
         Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Switch(
                activeColor: Colors.blue,
                value: themeProvider.lightTheme, onChanged: (value) {
                themeProvider.changeTheme(value);
              },),

              Text(Provider.of<theme>(context).text)
            ],
          ),
        ),
      ),
    );
  }
}
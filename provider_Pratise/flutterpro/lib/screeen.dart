import 'package:flutter/material.dart';

class ConatinerPage extends StatelessWidget {
  const ConatinerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          GestureDetector(
            child: Container(
              color: Colors.black,
              width: 100,
              height: 100,
            ),
          ),
          
        ],
      ),
    );
  }
}
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutterpro/provider.dart';
import 'package:provider/provider.dart';

class ImagePage extends StatelessWidget {
  const ImagePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: 
        Consumer<imageddProvider>(
          builder: (context, value, child) =>  GestureDetector(
            onTap: () {
              value.imageAdd();
            },
            child: Container(
              width: 100,
              height: 100,
              color: Colors.black12,
            ),
          ),
        ),
      ),
    );
  }
  

}
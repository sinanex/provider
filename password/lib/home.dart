import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:password/provider.dart';
import 'package:provider/provider.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(child: Consumer<Password>(
      builder: (context, value, child) {
        return
        Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: CupertinoTextField(
              obscureText: value.sercure,
              suffix: Padding(
                padding: const EdgeInsets.all(8.0),
                child: IconButton(onPressed: (){
                    value.sercurePassword();

                }, icon: value.iconPassword),
              ),
                  placeholder: 'password',
            ),
          ),
        ],
      );
      },
    ));
  }
}
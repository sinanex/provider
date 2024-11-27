import 'package:bottomnavigation/provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(ChangeNotifierProvider(
      create: (context) => bottomNav(), child: const MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const CupertinoApp(
      theme: CupertinoThemeData(),
      home: NavigationPage(),
    );
  }
}

final pages = [
  const homePage(),
  const Settings(),
];

class NavigationPage extends StatelessWidget {
  const NavigationPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Consumer<bottomNav>(
      builder: (context, value, child) {
        return CupertinoTabScaffold(
          tabBuilder: (context, index) => pages[index],
          tabBar: CupertinoTabBar(
              backgroundColor: Colors.black,
              currentIndex: value.currentIndex,
              onTap: (index) {
                value.chnageindex = index;
              },
              items: const [
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.home), label: 'home'),
                BottomNavigationBarItem(
                    icon: Icon(CupertinoIcons.settings), label: 'settings'),
              ]),
        );
      },
    );
  }
}

// ignore: camel_case_types
class homePage extends StatelessWidget {
  const homePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "home",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

class Settings extends StatelessWidget {
  const Settings({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Text(
          "settings",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

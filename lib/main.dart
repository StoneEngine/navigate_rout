import 'package:flutter/material.dart';
import 'package:navigate_route/screens/detail_screen.dart';
import 'package:navigate_route/screens/home_screen.dart';
import 'package:navigate_route/screens/third_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
      ),

      initialRoute: HomeScreen.routeName,

      routes: {
        HomeScreen.routeName: (context) => const HomeScreen(),
        DetailScreen.routeName: (context) => const DetailScreen(),
        ThirdScreen.routeName: (context) => const ThirdScreen(),
      },
    );
  }
}

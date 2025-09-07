import 'package:flutter/material.dart';
import 'package:navigate_route/screens/detail_screen.dart';
import 'package:navigate_route/screens/third_screen.dart';

class HomeScreen extends StatelessWidget {
  static String routeName = '/home';
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(
                  context,
                  DetailScreen.routeName,

                  arguments: {
                    'itemId': 'Peter Denman',
                    'message': 'smart person',
                  },
                );
                print("ได้ค่ากลับมาคือ $result");
              },
              child: const Text('Go to Detail Screen.'),
            ),
            ElevatedButton(
              onPressed: () async {
                final result = await Navigator.pushNamed(
                  context,
                  ThirdScreen.routeName,

                  arguments: {'itemId': 'Third Item', 'message': 'black'},
                );
                print("ได้ค่ากลับมาคือ $result");
              },
              child: const Text('Go to Third Screen.'),
            ),
          ],
        ),
      ),
    );
  }
}

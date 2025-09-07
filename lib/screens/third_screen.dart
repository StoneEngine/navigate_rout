import 'package:flutter/material.dart';

class ThirdScreen extends StatelessWidget {
  static String routeName = '/third';
  const ThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final args =
        ModalRoute.of(context)?.settings.arguments as Map<String, String>;
    return Scaffold(
      appBar: AppBar(title: const Text("Third Screen")),
      body: Center(
        child: Column(
          children: [
            Text('item id: ${args['itemId']}'),
            Text('Detail: ${args['message']}'),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context, 'item1 detail returned.');
              },
              child: Text("Go Back "),
            ),
          ],
        ),
      ),
    );
  }
}

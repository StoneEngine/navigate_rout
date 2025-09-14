import 'package:flutter/material.dart';
import 'package:navigate_route/provider/data_providers.dart';
import 'package:navigate_route/screens/detail_screen.dart';
import 'package:provider/provider.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final message = context.watch<DataProvider>().message;

    return Scaffold(
      appBar: AppBar(title: const Text('Home Screen')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              message.isEmpty ? "" : message,
              style: const TextStyle(fontSize: 16),
            ),
            ElevatedButton(
              onPressed: () {
                context.read<DataProvider>().setMessage(
                  'this is data from home screen',
                );
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => DetailScreen()),
                );
              },
              child: Text('Go to Detail Screen'),
            ),
          ],
        ),
      ),
    );
  }
}

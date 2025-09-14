import 'package:flutter/material.dart';
import 'package:navigate_route/provider/data_providers.dart';
import 'package:provider/provider.dart';

class DetailScreen extends StatelessWidget {
  // static String routeName = '/detail';
  // final String message;
  const DetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final message = context.watch<DataProvider>().message;

    return Scaffold(
      appBar: AppBar(title: const Text("Detail Screen")),
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
                  'this is data from detail page',
                );
                Navigator.pop(context);
              },
              child: Text("Go Back"),
            ),
          ],
        ),
      ),
    );
  }
}

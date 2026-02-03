import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color(0xFF835545),
        appBar: AppBar(
          title: const Text('Chick and the Egg'),
          backgroundColor: const Color(0xFF835545),
          actions: [
            Padding(padding: const EdgeInsets.only(right: 12),
            child: Image.asset('assets/transparent chick&egg.png', height: 100),
            ),
          ],
        ),
        drawer: Drawer(
          child: Text('This works'),
        ),
      ),
    );
  }
}

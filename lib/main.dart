import 'package:flutter/material.dart';
import '../widgets/app_top_bar.dart';

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
        appBar: const AppTopBar(title: 'Chick and Egg'),
        drawer: Drawer(
          child: Text('This works'),
        ),
      ),
    );
  }
}

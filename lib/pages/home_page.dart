import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import '../widgets/app_top_bar.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF835545),
      appBar: const AppTopBar(title: 'Home'),
      drawer: const AppDrawer(),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              'assets/chick.png', // change to your real path
              width: 180,
              fit: BoxFit.contain,
            ),
            const SizedBox(height: 16),
            const Text(
              'home page',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
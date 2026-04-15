import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import '../widgets/app_top_bar.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF835545),
      appBar: const AppTopBar(title: 'Settings'),
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
              'settings pages',
              style: TextStyle(color: Colors.white),
            ),
          ],
        ),
      ),
    );
  }
}
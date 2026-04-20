import 'package:flutter/material.dart';
import 'widgets/app_drawer.dart';
import 'widgets/app_top_bar.dart';
import 'pages/settings_page.dart';
import 'pages/table_of_contents_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      initialRoute: '/',
      routes: {
        '/': (_) => const HomePage(),
        '/settings': (_) => const SettingsPage(),
        '/ToC': (_) => const TableOfContentsPage(),
      },
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      backgroundColor: Color(0xFF835545),
      appBar: AppTopBar(title: 'Chick and Egg'),
      drawer: AppDrawer(),
      body: Center(child: Text('Home', style: TextStyle(color: Colors.white))),
    );
  }
}
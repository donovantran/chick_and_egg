import 'package:flutter/material.dart';
import 'widgets/app_drawer.dart';
import 'widgets/app_top_bar.dart';
import 'pages/app_shell.dart';
import 'pages/settings_page.dart';
import 'pages/table_of_contents_page.dart';
import 'pages/notes_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override

  Widget build(BuildContext context) {

    return MaterialApp(

      debugShowCheckedModeBanner: false,

      initialRoute: '/',

      routes: {

        '/': (_) => const AppShell(startIndex: 0),       // TOC tab

        '/toc': (_) => const AppShell(startIndex: 0),

        '/notes': (_) => const AppShell(startIndex: 1),

        '/settings': (_) => const AppShell(startIndex: 2),

      },

    );

  }

}

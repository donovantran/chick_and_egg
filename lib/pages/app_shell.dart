import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';

import '../widgets/app_drawer.dart';
import '../widgets/app_top_bar.dart';
import 'notes_page.dart';
import 'settings_page.dart';
import 'table_of_contents_page.dart';
import 'home_page.dart';

class AppShell extends StatefulWidget {
  const AppShell({super.key, this.startIndex = 0});
  final int startIndex;

  @override
  State<AppShell> createState() => _AppShellState();
}

class _AppShellState extends State<AppShell> {
  late int currentIndex;

  final pages = const [
    HomePage(),
    TableOfContentsPage(),
    NotesPage(),
    SettingsPage(),
  ];

  @override
  void initState() {
    super.initState();
    currentIndex = widget.startIndex;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF835545),
      //appBar: const AppTopBar(title: 'Chick and Egg'),
      drawer: const AppDrawer(),
      body: pages[currentIndex],
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        child: GNav(
          selectedIndex: currentIndex,
          onTabChange: (i) => setState(() => currentIndex = i),
          gap: 8,
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
          tabBorderRadius: 16,
          color: Colors.white70,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.white.withOpacity(0.15),
          tabs: const [
            GButton(icon: Icons.house, text: 'Home'),
            GButton(icon: Icons.menu_book, text: 'Table of Contents'),
            GButton(icon: Icons.note_alt, text: 'Notes'),
          ],
        ),
      ),
    );
  }
}
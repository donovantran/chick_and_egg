import 'package:flutter/material.dart';

class AppTopBar extends StatelessWidget implements PreferredSizeWidget {
  const AppTopBar({super.key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(title),
      backgroundColor: const Color(0xFF835545),
      actions: [
        Padding(
          padding: const EdgeInsets.only(right: 12),
          child: Image.asset(
            'assets/transparent chick&egg.png',
            height: 40,
          ),
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
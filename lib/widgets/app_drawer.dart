import 'dart:ui';
import 'package:flutter/material.dart';

class AppDrawer extends StatelessWidget {
  const AppDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.transparent, // important
      elevation: 0,
      child: ClipRRect(
        borderRadius: const BorderRadius.only(
          topRight: Radius.circular(24),
          bottomRight: Radius.circular(24),
        ),
        child: BackdropFilter(
          filter: ImageFilter.blur(sigmaX: 14, sigmaY: 14),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white.withOpacity(0.12), // glass tint
              borderRadius: const BorderRadius.only(
                topRight: Radius.circular(24),
                bottomRight: Radius.circular(24),
              ),
              border: Border.all(
                color: Colors.white.withOpacity(0.25),
                width: 1,
              ),
            ),
            child: ListView(
              padding: EdgeInsets.zero,
              children: [
                DrawerHeader(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text('NAME OF USER', style: TextStyle(color: Colors.white)),
                      const SizedBox(height: 20),
                      const CircleAvatar(radius: 32),
                      const SizedBox(height: 20),

                    ],
                  ),
                ),
                ListTile(
                  leading: const Icon(Icons.house, color: Colors.white),
                  title: const Text('Home', style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.pop(context);
                    Navigator.pushNamed(context, '/');
                  },
                ),
                ListTile(
                  leading: const Icon(Icons.collections_bookmark_outlined, color: Colors.white,),
                  title: const Text('Table of Contents', style: TextStyle(color: Colors.white)),
                ),
                ListTile(
                  leading: const ImageIcon(AssetImage('assets/notes_icon.png'), size: 24, color: Colors.white,),
                  title: const Text('Notes', style: TextStyle(color: Colors.white),)
                ),
                ListTile(
                  leading: const Icon(Icons.settings, color: Colors.white),
                  title: const Text('Settings', style: TextStyle(color: Colors.white)),
                  onTap: () {
                    Navigator.pop(context); // close the drawer
                    Navigator.pushReplacementNamed(context, '/settings'); // go to settings without stacking
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
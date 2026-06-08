import 'package:flutter/material.dart';
import '../widgets/app_drawer.dart';
import '../widgets/app_top_bar.dart';

class NotesPage extends StatelessWidget {
  const NotesPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset('assets/chick.png',width: 180,
            fit: BoxFit.contain,),
          const SizedBox(height: 16),
          const Text('notes page', style: TextStyle(color: Colors.white)),
        ],
      ),
    );
  }
}
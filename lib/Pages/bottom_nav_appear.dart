import 'package:flutter/material.dart';

class BottomNavAppear extends StatefulWidget {
  const BottomNavAppear({super.key});

  @override
  State<BottomNavAppear> createState() => _BottomNavAppearState();
}

class _BottomNavAppearState extends State<BottomNavAppear> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('BottomNav with appearance')),
    );
  }
}

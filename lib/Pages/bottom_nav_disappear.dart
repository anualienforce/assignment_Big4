import 'package:flutter/material.dart';

class BottomNavDisappear extends StatefulWidget {
  const BottomNavDisappear({super.key});

  @override
  State<BottomNavDisappear> createState() => _BottomNavDisappearState();
}

class _BottomNavDisappearState extends State<BottomNavDisappear> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Center(child: Text('No BottomNavBar')),
    );
  }
}

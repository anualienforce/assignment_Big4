import 'package:big4/Pages/bottom_nav_appear.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.add),
          const SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            PersistentNavBarNavigator.pushNewScreen(context, screen: const BottomNavAppear(),
                withNavBar: true);
          }, child: const Text('BottomNav with appear')),
          const SizedBox(height: 10,),
          const Text('Add'),
        ],
      )),
    );
  }
}

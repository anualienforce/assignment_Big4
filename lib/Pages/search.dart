

import 'package:big4/Pages/bottom_nav_disappear.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';

class Search extends StatefulWidget {
  const Search({super.key});

  @override
  State<Search> createState() => _SearchState();
}

class _SearchState extends State<Search> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Icon(Icons.search),
          const SizedBox(height: 10,),
          ElevatedButton(onPressed: (){
            PersistentNavBarNavigator.pushNewScreen(context, screen: const BottomNavDisappear(),
                withNavBar: false);
          }, child: const Text('No BottomNav')),
          const SizedBox(height: 10,),
          const Text('Add'),
        ],
      )),
    );
  }
}

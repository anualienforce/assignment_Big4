import 'package:big4/Pages/Home.dart';
import 'package:big4/Pages/add.dart';
import 'package:big4/Pages/profile.dart';
import 'package:big4/Pages/search.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_bottom_nav_bar.dart';
import 'package:flutter/services.dart';
import 'dart:io';
class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {


  final _controller = PersistentTabController();

  List<Widget> screens(){
    return [
      const MyHomePage(),
      const Add(),
      const Search(),
      const Profile(),
    ];
  }

  List<PersistentBottomNavBarItem> navBarItem(){
    return[
      PersistentBottomNavBarItem(icon: const Icon(Icons.home,color: Colors.black),
          title: "Home",
          activeColorPrimary: Colors.deepPurple.shade500,
          inactiveIcon: const Icon(Icons.home_outlined, color: Colors.black,),
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
          inactiveColorPrimary: Colors.grey
      ),
      PersistentBottomNavBarItem(icon: const Icon(Icons.add_box,color: Colors.black),
          title: "Add",
          activeColorPrimary: Colors.deepPurple.shade500,
          inactiveIcon: const Icon(Icons.add_box_outlined, color: Colors.black,),
          inactiveColorPrimary: Colors.grey,
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
      ),
      PersistentBottomNavBarItem(icon: const Icon(Icons.search,color: Colors.black),
          title: "Search",
          activeColorPrimary: Colors.deepPurple.shade500,
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
          inactiveIcon: const Icon(Icons.search_outlined, color: Colors.black,),
          inactiveColorPrimary: Colors.grey
      ),
      PersistentBottomNavBarItem(icon: const Icon(Icons.person_2,color: Colors.black,),
          title: "Profile",
          inactiveIcon: const Icon(Icons.person_2_outlined, color: Colors.black,),
          activeColorPrimary: Colors.deepPurple.shade500,
          textStyle: const TextStyle(fontWeight: FontWeight.bold),
          inactiveColorPrimary: Colors.grey
      ),
    ];
  }
  @override
  Widget build(BuildContext context) {
    return PersistentTabView(context, screens: screens(),
      items: navBarItem(),
      controller: _controller,
      navBarHeight: 70.0,
      bottomScreenMargin: 70,
      hideNavigationBarWhenKeyboardAppears: true,
      navBarStyle: NavBarStyle.style9,
      backgroundColor: Colors.deepPurple.shade50,
      popBehaviorOnSelectedNavBarItemPress:PopBehavior.all,
      onWillPop: (BuildContext? context) async {
        if (Platform.isAndroid) {
          // to close the app on Android
          SystemNavigator.pop();
        } else if (Platform.isIOS) {
          // to close the app on iOS
          exit(0);
        }
        return false;
      },
    );
  }
}


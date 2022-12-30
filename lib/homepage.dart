import 'package:flutter/material.dart';
import 'package:instagram_ui_clone/pages/accounts.dart';
import 'package:instagram_ui_clone/pages/home.dart';
import 'package:instagram_ui_clone/pages/reels.dart';
import 'package:instagram_ui_clone/pages/search.dart';
import 'package:instagram_ui_clone/pages/shop.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int currentIndex = 0;
  void navigateBottomBar(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  final List<Widget> children = [
    UserHome(),
    UserSearch(),
    UserReels(),
    UserShop(),
    UserAccount()
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: children[currentIndex],
      bottomNavigationBar: NavigationBar(
        selectedIndex: currentIndex,
        onDestinationSelected: navigateBottomBar,
        destinations: [
          NavigationDestination(icon: Icon(Icons.home), label: 'home'),
          NavigationDestination(icon: Icon(Icons.search), label: 'search'),
          NavigationDestination(icon: Icon(Icons.video_call), label: 'reels'),
          NavigationDestination(icon: Icon(Icons.shop), label: 'shop'),
          NavigationDestination(icon: Icon(Icons.person), label: 'person')
        ],
      ),
    );
  }
}

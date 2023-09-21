import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

import '../Screens/Category_screen/category.dart';
import '../Screens/Category_screen/tshirt_category.dart';
import '../Screens/Favourite_screen/favourite_screen.dart';
import '../Screens/home_screen/home_view.dart';

class BottomNavigation extends StatefulWidget {
  const BottomNavigation({super.key});

  @override
  State<BottomNavigation> createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int _selectedIndex = 0;

  final List<Widget> _pages = [
    HomeView(),
    Category_Screen(),
    FavouriteScreen(),
  ];

  void _onTabTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: CurvedNavigationBar(
        animationDuration: Duration(milliseconds: 300),
        backgroundColor: Colors.black,
        color: const Color.fromARGB(255, 220, 220, 220),
        items: [
          Icon(Icons.home),
          Icon(Icons.category_outlined),
          Icon(Icons.favorite_border),
        ],
        onTap: _onTabTapped,
      ),
    );
  }
}

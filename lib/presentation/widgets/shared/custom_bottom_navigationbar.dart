import 'package:flutter/material.dart';

class CustomBottomNavigationbar extends StatelessWidget {
  const CustomBottomNavigationbar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(elevation: 0, items: const [
      BottomNavigationBarItem(icon: Icon(Icons.home_max), label: 'Home'),
      BottomNavigationBarItem(
          icon: Icon(Icons.label_outline), label: 'Categories'),
      BottomNavigationBarItem(
          icon: Icon(Icons.favorite_outlined), label: 'Favorites')
    ]);
  }
}

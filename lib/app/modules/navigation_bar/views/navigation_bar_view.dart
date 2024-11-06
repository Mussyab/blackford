// lib/modules/navigation_bar/views/navigation_bar_screen.dart
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class NavigationBarScreen extends StatefulWidget {
  const NavigationBarScreen({super.key});

  @override
  State<NavigationBarScreen> createState() => _NavigationBarScreenState();
}

class _NavigationBarScreenState extends State<NavigationBarScreen> {
  int _selectedIndex = 0;

  // List of screens to be shown when an item is selected
  final List<Widget> _screens = [
    const Center(child: Text('Home Screen')),
    const Center(child: Text('Books Screen')),
    const Center(child: Text('Cart Screen')),
    const Center(child: Text('Profile Screen')),
  ];

  // Function to handle item selection in the BottomNavigationBar
  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Navigation Bar"),
        backgroundColor: Colors.blue,
      ),
      body: _screens[_selectedIndex], // Display the selected screen
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue, // Background color of the navigation bar
        currentIndex: _selectedIndex,
        onTap: _onItemTapped,
        selectedItemColor: Colors.white, // Active item color (white)
        unselectedItemColor: Colors.grey, // Inactive item color (gray)
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.book),
            label: 'Books',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_cart),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

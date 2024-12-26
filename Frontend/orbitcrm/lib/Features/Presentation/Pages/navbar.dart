import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  final int selectedIndex;
  final ValueChanged<int> onItemTapped;

  const CustomBottomNavBar({
    Key? key,
    required this.selectedIndex,
    required this.onItemTapped,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_box  ),
          label: 'Contact',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.person_add),
          label: 'Lead',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.settings),
          label: 'Profile',
        ),
      ],

      currentIndex: selectedIndex,
      selectedItemColor: Colors.blue.shade600,
      unselectedItemColor: Colors.grey,
      onTap: onItemTapped,
      iconSize: 30,
    );
  }
}

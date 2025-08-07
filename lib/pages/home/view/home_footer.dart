import 'package:flutter/material.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      items: [
        BottomNavigationBarItem(
          icon: Icon(
            Icons.home,
            color: Colors.grey,
          ),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.local_activity,
            color: Colors.grey,
          ),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.message,
            color: Colors.grey,
          ),
          label: 'home',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle,
            color: Colors.grey,
          ),
          label: 'home',
        ),
      ],
    );
  }
}

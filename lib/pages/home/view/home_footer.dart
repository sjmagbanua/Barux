import 'package:flutter/material.dart';

class HomeFooter extends StatelessWidget {
  const HomeFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      selectedItemColor: Colors.red,
      type: BottomNavigationBarType.fixed,
      items: [
        BottomNavigationBarItem(
          backgroundColor: Colors.red,
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
          label: 'local',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.message,
            color: Colors.grey,
          ),
          label: 'message',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.account_circle,
            color: Colors.grey,
          ),
          label: 'account',
        ),
      ],
    );
  }
}

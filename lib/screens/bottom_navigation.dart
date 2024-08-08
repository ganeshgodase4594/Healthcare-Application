import 'package:flutter/material.dart';

class BottomNavigation extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        items: const [
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/Home.png")),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/reportbar.png")),
            label: 'Reports',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/notificationbar.png")),
            label: 'Notification',
          ),
          BottomNavigationBarItem(
            icon: ImageIcon(AssetImage("assets/images/Profile.png")),
            label: 'Profile',
          ),
        ],
      ),
    );
  }
}

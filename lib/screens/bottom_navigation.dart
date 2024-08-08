import 'package:flutter/material.dart';
import 'homepage.dart';

import 'notification.dart';
import 'profile.dart';
import 'report.dart'; 

class BottomNavigation extends StatefulWidget {
  @override
  _BottomNavigationState createState() => _BottomNavigationState();
}

class _BottomNavigationState extends State<BottomNavigation> {
  int selectedIndex = 0; 

  final List<Widget> pages = [
   HomePage(),
    ReportScreen(),
    NotificationScreen(),
    ProfileScreen(),
   
  ];

  void onItemTapped(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: pages[selectedIndex], 
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: selectedIndex, 
        onTap: onItemTapped, 
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

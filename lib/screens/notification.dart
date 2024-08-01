
import 'package:flutter/material.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({super.key});

  @override
  State<NotificationScreen> createState() => _NotificationScreenState();
}

class _NotificationScreenState extends State<NotificationScreen> {

  List notification=[];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:notification.isEmpty ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(child: Image.asset("assets/images/notification.png")),
          ],
        ):Container(
          // notification logic
        )
    );
  }
}
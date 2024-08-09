import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseConnect {
  static final message = FirebaseMessaging.instance;

  static Future<void> notification() async {
    await message.requestPermission();
    final token = message.getToken();

    log("token :$token");
  }
}

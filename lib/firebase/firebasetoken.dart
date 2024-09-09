import 'dart:developer';

import 'package:firebase_messaging/firebase_messaging.dart';

class FirebaseConnect {
  

  static Future<void> notification() async {
  


    final fcm = FirebaseMessaging.instance;

    try {
      var token = await fcm.getToken();

      log("Token: $token");
    } catch (e) {
      throw Exception("");
    }
  }
}

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:healthcare_frontend/firebase/firebasetoken.dart';
import 'package:healthcare_frontend/firebase_options.dart';
import 'package:healthcare_frontend/provider/bookmark.dart';
import 'package:healthcare_frontend/provider/productprovider.dart';
import 'package:provider/provider.dart';

import 'firebase/signingoogle.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  FirebaseConnect.notification();
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (context) => ProductProvider()),
      ChangeNotifierProvider(create: (_) => BookmarkProvider())
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: GoogleSignIn(),
    );
  }
}

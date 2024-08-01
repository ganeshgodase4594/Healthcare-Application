
import 'package:flutter/material.dart';
import 'package:healthcare_frontend/provider/productprovider.dart';
import 'package:healthcare_frontend/screens/doctordetail.dart';
import 'package:healthcare_frontend/screens/homepage.dart';
import 'package:healthcare_frontend/screens/notification.dart';
import 'package:healthcare_frontend/screens/pharmacyproduct.dart';
import 'package:healthcare_frontend/screens/productdetail.dart';
import 'package:healthcare_frontend/screens/profile.dart';
import 'package:provider/provider.dart';

import 'screens/locationpage.dart';
import 'screens/mycart.dart';
import 'screens/onboardingscreen.dart';
import 'screens/paymentdetil.dart';


void main() => runApp(
  MultiProvider(providers:[
    ChangeNotifierProvider(create: (context)=>ProductProvider())
  ],
  child: MyApp(),)
  
);

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {

   
    
    return MaterialApp(
    
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}
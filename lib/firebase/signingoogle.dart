import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare_frontend/utils/colors.dart';

class GoogleSignIn extends StatefulWidget {
  const GoogleSignIn({super.key});

  @override
  State<GoogleSignIn> createState() => _GoogleSignInState();
}

class _GoogleSignInState extends State<GoogleSignIn> {
  final FirebaseAuth auth = FirebaseAuth.instance;
  User? user;

  void initState() {
    super.initState();
    auth.authStateChanges().listen((event) {
      setState(() {
        user = event;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {},
          child: Container(
            height: 60,
            width: 300,
            decoration: BoxDecoration(
              border:
                  Border.all(color: Color.fromRGBO(229, 231, 235, 1), width: 1),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Center(
              child: Row(
                children: [
                  Icon(Icons.facebook),
                  const SizedBox(
                    width: 10,
                  ),
                  Text(
                    "Sign in with Google",
                    style: GoogleFonts.poppins(
                      color: AppColors.thirdColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 1,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void handleGoogleSignIn() {
    try {
      GoogleAuthProvider authprovider = GoogleAuthProvider();
      auth.signInWithProvider(authprovider);
    } catch (e) {
      print(e);
    }
  }
}

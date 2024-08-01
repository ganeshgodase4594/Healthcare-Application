import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_onboarding_slider/flutter_onboarding_slider.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare_frontend/utils/colors.dart';

class OnBoarding extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return CupertinoApp(
      home: OnBoardingSlider(
        headerBackgroundColor: Colors.white,
        finishButtonText: 'Register',
        finishButtonStyle: FinishButtonStyle(
          backgroundColor: Colors.black,
        ),
        skipTextButton: Text(
          "Skip",
          style: GoogleFonts.poppins(
            color: AppColors.blackblur,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        trailing: Text(
          "Skip",
          style: GoogleFonts.poppins(
            color: AppColors.blackblur,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
        background: [
          Padding(
            padding: const EdgeInsets.only(left: 50),
            child: Image.asset('assets/images/femaledoctor.png'),
          ),
          Padding(
          padding: const EdgeInsets.only(left: 50),

            child: Image.asset('assets/images/maledoctor.png'),
          ),
        ],
        totalPage: 2,
        speed: 1.8,
        pageBodies: [
          Padding(
            padding: const EdgeInsets.only(left: 60,right: 60),
            child: Container(
              
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 480,
                  ),
                  Text(
                    textAlign: TextAlign.start,
                    "Find a lot of specialist doctors in one place ",
                    style: GoogleFonts.poppins(
                      color: AppColors.thirdColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
          padding: const EdgeInsets.only(left: 60,right: 60),

            child: Container(
             
              child: Column(
                children: <Widget>[
                  SizedBox(
                    height: 480,
                  ),
                  Text(
                    textAlign: TextAlign.start,
                    "Get advice only from a doctor you believe in. ",
                    style: GoogleFonts.poppins(
                      color: AppColors.thirdColor,
                      fontWeight: FontWeight.w700,
                      fontSize: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

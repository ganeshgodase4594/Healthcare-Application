import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare_frontend/utils/colors.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                  height: 90,
                  width: 90,
                  decoration: const BoxDecoration(shape: BoxShape.circle),
                  child: Image.asset(
                    "assets/images/Ellipse 78.png",
                  )),
            ),
            const SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                "Ruchita",
                style: GoogleFonts.inter(
                    color: AppColors.thirdColor,
                    fontSize: 12,
                    fontWeight: FontWeight.w600),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Row(
              children: [
                Column(
                  children: [
                    Image.asset("assets/images/Heartbeat.png"),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "heart rate",
                      style: GoogleFonts.poppins(
                          color: Color.fromRGBO(64, 124, 226, 0.74),
                          fontSize: 10,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "215bpm",
                      style: GoogleFonts.poppins(
                          color: AppColors.secondoryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),

                const Spacer(),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: Color.fromRGBO(64, 124, 226, 0.13))),
                ),
                //const Divider(height: 100,thickness: 5,color: Color.fromRGBO(64,124,226,0.13),),
                const Spacer(),
                Column(
                  children: [
                    Image.asset("assets/images/cal.png"),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "Calories",
                      style: GoogleFonts.poppins(
                          color: Color.fromRGBO(64, 124, 226, 0.74),
                          fontSize: 10,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "756cal",
                      style: GoogleFonts.poppins(
                          color: AppColors.secondoryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                const Spacer(),
                //const Divider(height: 100,thickness: 5,color: Color.fromRGBO(64,124,226,0.13),),
                Container(
                  height: 50,
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: Color.fromRGBO(64, 124, 226, 0.13))),
                ),
                const Spacer(),
                Column(
                  children: [
                    Image.asset("assets/images/weight.png"),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "weight",
                      style: GoogleFonts.poppins(
                          color: Color.fromRGBO(64, 124, 226, 0.74),
                          fontSize: 10,
                          fontWeight: FontWeight.w600),
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(
                      "103kg",
                      style: GoogleFonts.poppins(
                          color: AppColors.secondoryColor,
                          fontSize: 14,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                )
              ],
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                Container(
                  height: 43,
                  width: 43,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(64, 124, 226, 0.13),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/images/Heart.png"),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "My Saved",
                  style: GoogleFonts.poppins(
                      color: AppColors.thirdColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                GestureDetector(
                    onTap: () {},
                    child: Image.asset("assets/images/arrow.png")),
              ],
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: Color.fromRGBO(64, 124, 226, 0.13))),
            ),
            const Spacer(),
            Row(
              children: [
                Container(
                  height: 43,
                  width: 43,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(64, 124, 226, 0.13),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/images/Document.png"),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "Appoinment",
                  style: GoogleFonts.poppins(
                      color: AppColors.thirdColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                GestureDetector(
                    onTap: () {},
                    child: Image.asset("assets/images/arrow.png")),
              ],
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: Color.fromRGBO(64, 124, 226, 0.13))),
            ),
            const Spacer(),
            Row(
              children: [
                Container(
                  height: 43,
                  width: 43,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(64, 124, 226, 0.13),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/images/Wallet.png"),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "Payment Method",
                  style: GoogleFonts.poppins(
                      color: AppColors.thirdColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                GestureDetector(
                    onTap: () {},
                    child: Image.asset("assets/images/arrow.png")),
              ],
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: Color.fromRGBO(64, 124, 226, 0.13))),
            ),
            const Spacer(),
            Row(
              children: [
                Container(
                  height: 43,
                  width: 43,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(64, 124, 226, 0.13),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/images/Chat.png"),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "FAQs",
                  style: GoogleFonts.poppins(
                      color: AppColors.thirdColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                GestureDetector(
                    onTap: () {},
                    child: Image.asset("assets/images/arrow.png")),
              ],
            ),
            const Spacer(),
            Container(
              width: double.infinity,
              decoration: BoxDecoration(
                  border: Border.all(
                      width: 1, color: Color.fromRGBO(64, 124, 226, 0.13))),
            ),
            const Spacer(),
            Row(
              children: [
                Container(
                  height: 43,
                  width: 43,
                  decoration: const BoxDecoration(
                    color: Color.fromRGBO(64, 124, 226, 0.13),
                    shape: BoxShape.circle,
                  ),
                  child: Image.asset("assets/images/logout.png"),
                ),
                const SizedBox(
                  width: 20,
                ),
                Text(
                  "Logout",
                  style: GoogleFonts.poppins(
                      color: AppColors.thirdColor,
                      fontSize: 14,
                      fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                GestureDetector(
                    onTap: () {},
                    child: Image.asset("assets/images/arrow.png")),
              ],
            ),
            
          ],
        ),
      ),
    );
  }
}

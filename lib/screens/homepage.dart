import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare_frontend/utils/colors.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(color: Colors.blue.shade50),
            child: Padding(
              padding: const EdgeInsets.only(top: 85, left: 20),
              child: Row(
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      // SvgPicture.asset(
                      //   "assets/images/firstone.svg",
                      //   height: 38,
                      //   width: 38,
                      // ),
                      Image.asset(
                        "assets/images/Ellipse 78.png",
                        height: 60,
                        width: 60,
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "welcome ! ",
                        style: GoogleFonts.poppins(
                          color: AppColors.thirdColor,
                          fontWeight: FontWeight.w500,
                          fontSize: 18,
                        ),
                      ),
                      Text(
                        "Ruchita ",
                        style: GoogleFonts.poppins(
                          color: AppColors.thirdColor,
                          fontWeight: FontWeight.w300,
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(height: 20),
                      Text(
                        "How is it going today ? ",
                        style: GoogleFonts.poppins(
                          color: AppColors.blackblur,
                          fontWeight: FontWeight.w500,
                          fontSize: 16,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(width: 5),
                  Column(
                    children: [
                      Image.asset(
                        "assets/images/doctorbai.png",
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 300,
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                //
                //color: Color.fromRGBO(33, 150, 243, 1),
                color: AppColors.primaryColor,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30),
                ),
              ),
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 20),
                  Container(
                    margin: EdgeInsets.only(left: 25),
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                      color: const Color.fromRGBO(251, 251, 251, 1),
                      border: Border.all(
                        color: const Color.fromRGBO(232, 243, 241, 1),
                        width: 1,
                      ),
                      borderRadius: BorderRadius.circular(24),
                    ),
                    child: TextField(
                      decoration: InputDecoration(
                        border: InputBorder.none,
                        hintText: "Search doctor, drugs, articles...",
                        prefixIcon: const Icon(
                          Icons.search,
                          color: AppColors.blackblur,
                        ),
                        hintStyle: GoogleFonts.poppins(
                          color: AppColors.blackblur,
                          fontWeight: FontWeight.w400,
                          fontSize: 12,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      buildOption(
                        iconPath: "assets/images/Doctor.png",
                        label: "Top Doctors",
                      ),
                      buildOption(
                        iconPath: "assets/images/Pharmacy.png",
                        label: "Pharmacy",
                      ),
                      buildOption(
                        iconPath: "assets/images/Ambulance.png",
                        label: "Ambulance",
                      ),
                    ],
                  ),
                  const SizedBox(height: 30),
                  Padding(
                    padding: EdgeInsets.all(25),
                    child: Row(
                      children: [
                        Text(
                          "Health article",
                          style: GoogleFonts.poppins(
                            color: AppColors.thirdColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 22,
                          ),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {},
                          child: Text(
                            "See all",
                            style: GoogleFonts.inter(
                              color: AppColors.secondoryColor,
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: double.infinity,
                    child: ListView.builder(
                      itemCount: 15,
                      itemBuilder: (context, index) {
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            margin: EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                                border: Border.all(
                                    color:
                                        const Color.fromRGBO(34, 31, 31, 0.1)),
                                borderRadius: BorderRadius.circular(10)),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Column(
                                    children: [
                                      Container(
                                        margin: EdgeInsets.only(right: 15),
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(6),
                                        ),
                                        child: Image.asset(
                                            "assets/images/article1.png"),
                                      )
                                    ],
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      // mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Text(
                                          textAlign: TextAlign.start,
                                          "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist",
                                          style: GoogleFonts.poppins(
                                            color: const Color.fromRGBO(
                                                86, 86, 86, 1),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10,
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 2,
                                        ),
                                        Row(
                                          children: [
                                            Text(
                                              textAlign: TextAlign.start,
                                              "Jun 10,2023",
                                              style: GoogleFonts.poppins(
                                                color: AppColors.blackblur,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 10,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Text(
                                              textAlign: TextAlign.start,
                                              "5min read",
                                              style: GoogleFonts.poppins(
                                                color: AppColors.blackblur,
                                                fontWeight: FontWeight.w600,
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  //const Spacer(),
                                  const SizedBox(
                                    width: 50,
                                  ),
                                  Column(
                                    children: [
                                      GestureDetector(
                                        onTap: () {},
                                        child: Icon(
                                          Icons.bookmark,
                                          color: AppColors.secondoryColor,
                                        ),
                                      )
                                    ],
                                  )
                                ],
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                  )
                  // Add more widgets here for the health articles section
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget buildOption({required String iconPath, required String label}) {
    return Column(
      children: [
        Container(
          height: 45,
          width: 45,
          decoration: const BoxDecoration(
            color: AppColors.secondoryColor,
            shape: BoxShape.circle,
          ),
          child: Image.asset(
            iconPath,
          ),
        ),
        const SizedBox(height: 20),
        Text(
          label,
          style: GoogleFonts.poppins(
            color: AppColors.thirdColor,
            fontWeight: FontWeight.w400,
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}

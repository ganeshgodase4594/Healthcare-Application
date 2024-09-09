import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare_frontend/utils/colors.dart';
import 'package:healthcare_frontend/widget/pdf.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({super.key});

  @override
  State<ReportScreen> createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: 135,
              decoration: BoxDecoration(
                color: Color.fromRGBO(64, 124, 226, 0.19),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text(
                          textAlign: TextAlign.start,
                          "Heart rate",
                          style: GoogleFonts.poppins(
                            color: AppColors.thirdColor,
                            fontWeight: FontWeight.w600,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                    Row(
                      children: [
                        Center(
                          child: Text(
                            textAlign: TextAlign.start,
                            "97",
                            style: GoogleFonts.poppins(
                              color: AppColors.thirdColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 54,
                            ),
                          ),
                        ),
                        Text(
                          textAlign: TextAlign.start,
                          "bpm",
                          style: GoogleFonts.poppins(
                            color: AppColors.blackblur,
                            fontWeight: FontWeight.w400,
                            fontSize: 12,
                          ),
                        ),
                        const Spacer(),
                        Image.asset("assets/images/Vector 12.png"),
                      ],
                    ),
                    
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20,),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  height: 160,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(178, 116, 140, 0.42),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/heartreport.png"),
                      const SizedBox(height: 10,),
                       Text(
                          textAlign: TextAlign.start,
                          "Blood Group",
                          style: GoogleFonts.poppins(
                            color: AppColors.blackblur,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 10,),
                         Text(
                          textAlign: TextAlign.start,
                          "A+",
                          style: GoogleFonts.poppins(
                            color: AppColors.thirdColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                          ),
                        ),

                    ],
                  ),
                ),
                const Spacer(),
                   Container(
                  padding: EdgeInsets.symmetric(horizontal: 20,vertical: 20),
                  height: 160,
                  width: 170,
                  decoration: BoxDecoration(
                    color: Color.fromRGBO(251, 240, 220, 1),
                    borderRadius: BorderRadius.circular(10)
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Image.asset("assets/images/weigthreport.png"),
                      const SizedBox(height: 10,),
                       Text(
                          textAlign: TextAlign.start,
                          "Weight",
                          style: GoogleFonts.poppins(
                            color: AppColors.blackblur,
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                          ),
                        ),
                        const SizedBox(height: 10,),
                         Text(
                          textAlign: TextAlign.start,
                          "103lbs",
                          style: GoogleFonts.poppins(
                            color: AppColors.thirdColor,
                            fontWeight: FontWeight.w500,
                            fontSize: 30,
                          ),
                        ),

                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(
                      height: 20,
                    ),
                    GestureDetector(
                      onTap: () async {
                        final pdfFile = await SimplePdf.generatetextpdf(
                            'ganesh godase', 'vishal nanaware');
                        SaveAndOpenDocument.openPdf(pdfFile);
                      },
                      child: Container(
                        height: 40,
                        width: 150,
                        child: Center(
                            child: Text(
                          "open pdf",
                          style: TextStyle(color: Colors.black),
                        )),
                      ),
                    )
          ],
        ),
      ),
    );
  }
}

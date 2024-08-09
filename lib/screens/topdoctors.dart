
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare_frontend/screens/doctordetail.dart';
import 'package:healthcare_frontend/utils/colors.dart';

class TopDocrors extends StatefulWidget {
  const TopDocrors({super.key});

  @override
  State<TopDocrors> createState() => _TopDocrorsState();
}

class _TopDocrorsState extends State<TopDocrors> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(30.0),
        child: Column(
          
          children: [
            const SizedBox(height: 20,),
             Text("Top Doctors",  style: GoogleFonts.poppins(color: AppColors.thirdColor,fontWeight: FontWeight.w600,fontSize: 16,),),
             const SizedBox(height: 10,),
        
             Expanded(
               child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 15,
                itemBuilder: (context, index) {
                 return GestureDetector(
                  onTap: () => const DoctorDetail(),
                   child: Container(
                     margin: const EdgeInsets.only(bottom: 15),
                    decoration: BoxDecoration(
                      border: Border.all(color: const Color.fromRGBO(34, 31, 31, 0.1),width: 1),
                      borderRadius: BorderRadius.circular(10)
                    ),
                    child: Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.all(12.0),
                          child: Image.asset("assets/images/cutie.png"),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text("Dr. Vaamana",  style: GoogleFonts.poppins(color: AppColors.thirdColor,fontWeight: FontWeight.w600,fontSize: 16,),),
                            Text("Dentists",  style: GoogleFonts.poppins(color: AppColors.blackblur,fontWeight:  FontWeight.w500,fontSize: 12,),),
                            Row(
                              children: [
                                const Icon(Icons.star,color: AppColors.secondoryColor,size: 14,),
                                Text("4.7",style: GoogleFonts.poppins(color: AppColors.secondoryColor,fontWeight: FontWeight.w500,fontSize: 12,),),
                              ],
                            ),
                            Row(
                              children: [
                                const Icon(Icons.location_on,color: AppColors.blackblur,size: 14,),
                                Text("800m away",  style: GoogleFonts.poppins(color: AppColors.blackblur,fontWeight: FontWeight.w500,fontSize: 12,),),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                   ),
                 );
                }
               ),
             ), 
          ],
        ),
      ),
    );
  }
}
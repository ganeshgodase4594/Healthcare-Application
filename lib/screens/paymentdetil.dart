
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare_frontend/utils/colors.dart';

class PaymentDetail extends StatefulWidget {
  const PaymentDetail({super.key});

  @override
  State<PaymentDetail> createState() => _PaymentDetailState();
}

class _PaymentDetailState extends State<PaymentDetail> {
  @override
  Widget build(BuildContext context) {
    return Dialog(
        child: Container(
              height: 425,
              width: 300,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),

              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween, 
                  children: [
                    Container(
                      height: 102,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Color.fromRGBO(245, 248, 255, 2),
                        shape: BoxShape.circle
                      ),
                      child: Center(child: Icon(Icons.check,size: 40,color: AppColors.secondoryColor,)),
                    ),
                  Text("Payment Success",  style: GoogleFonts.poppins(color: AppColors.thirdColor,fontWeight: FontWeight.w600,fontSize: 16,),),
                  Text(textAlign: TextAlign.center,
                    "Your payment has been successful, you can have a consultation session with your trusted doctor",  style: GoogleFonts.poppins(
                    color: AppColors.blackblur,fontWeight: FontWeight.w400,fontSize: 16,),),
                     GestureDetector(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context)=> PaymentDetail()));
                      },
                    child: Container(
                        height: 56,
                        width: 182,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(32),
                          color: AppColors.secondoryColor,
                        ),
                        child: Center(
                          child: Text(
                            "Back to Home",
                            style: GoogleFonts.poppins(
                              color: AppColors.primaryColor,
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                            ),
                          ),
                        )),
                  ),
                  ],
                ),
              ),
        ),
    );
  }
}
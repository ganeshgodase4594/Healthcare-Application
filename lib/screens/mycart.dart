import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare_frontend/screens/paymentdetil.dart';
import 'package:healthcare_frontend/utils/colors.dart';

class MyCart extends StatefulWidget {
  const MyCart({super.key});

  @override
  State<MyCart> createState() => _MyCartState();
}

class _MyCartState extends State<MyCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: Text(
          "My cart",
          style: GoogleFonts.poppins(
            color: AppColors.thirdColor,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //const SizedBox(height: 40,),
                  Expanded(
                    child: Container(
                      //color: Colors.red,
                      child: ListView.builder(
                          itemCount: 10,
                          itemBuilder: (context, index) {
                            return Container(
                              margin: EdgeInsets.only(bottom: 15),
                              height: 130,
                              width: double.infinity,
                              padding: const EdgeInsets.all(10),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(20),
                                  //color: Colors.green,
                                  border: Border.all(
                                      color: Color.fromRGBO(64, 124, 226, 0.13),
                                      width: 1)),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Center(
                                      child: Image.asset(
                                    "assets/images/productdetail.png",
                                    width: 100,
                                    height: 100,
                                  )),
                                  const SizedBox(width: 10),
                                  Expanded(
                                    child: Column(
              
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "OBH Combi",
                                          style: GoogleFonts.poppins(
                                              color: AppColors.thirdColor,
                                              fontSize: 20,
                                              fontWeight: FontWeight.w600),
                                        ),
                                        Text(
                                          "75ml",
                                          style: GoogleFonts.inter(
                                              color: AppColors.blackblur,
                                              fontSize: 16,
                                              fontWeight: FontWeight.w500),
                                        ),
                                        const Spacer(),
                                        Row(
                                          children: [
                                            Container(
                                              height: 32,
                                              width: 32,
                                              decoration: const BoxDecoration(
                                                  //color: AppColors.blueColor,
                                                  ),
                                              child: const Center(
                                                child: Icon(
                                                  Icons.remove,
                                                  color: AppColors.blackblur,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              "1",
                                              style: GoogleFonts.inter(
                                                  color: AppColors.thirdColor,
                                                  fontSize: 18,
                                                  fontWeight: FontWeight.w600),
                                            ),
                                            const SizedBox(width: 10),
                                            Container(
                                              height: 25,
                                              width: 25,
                                              decoration: const BoxDecoration(
                                                color: AppColors.secondoryColor,
                                              ),
                                              child: const Center(
                                                child: Icon(
                                                  Icons.add,
                                                  color: AppColors.primaryColor,
                                                  size: 20,
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Column(
                                    // mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                    children: [
                                      const Icon(Icons.delete_outline,
                                          size: 25, color: AppColors.blackblur),
                                      const Spacer(),
                                      Text(
                                        "\$19.99",
                                        style: GoogleFonts.inter(
                                            color: AppColors.thirdColor,
                                            fontSize: 18,
                                            fontWeight: FontWeight.w600),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            );
                          }),
                    ),
                  ),
                  const SizedBox(
                  height: 10,
                ),
                Text(
                  "Payment Detail",
                  style: GoogleFonts.inter(
                      color: AppColors.thirdColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(
                  children: [
                    Text(
                      "Subtotal",
                      style: GoogleFonts.inter(
                          color: AppColors.blackblur,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                    const Spacer(),
                    Text(
                      "\$25.98",
                      style: GoogleFonts.inter(
                          color: AppColors.blackblur,
                          fontSize: 14,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 10,
                ),
                Row(children: [
                  Text(
                    "Taxes",
                    style: GoogleFonts.inter(
                        color: AppColors.blackblur,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                  const Spacer(),
                  Text(
                    "\$1.00",
                    style: GoogleFonts.inter(
                        color: AppColors.blackblur,
                        fontSize: 14,
                        fontWeight: FontWeight.w400),
                  ),
                ]),
                SizedBox(
                  height: 10,
                ),
            
                Row(
                  children: [
                    Text(
                      "Total",
                      style: GoogleFonts.inter(
                          color: AppColors.thirdColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    Text(
                      "\$26.98",
                      style: GoogleFonts.inter(
                          color: AppColors.thirdColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                  ],
                ),
                Container(
                  margin: EdgeInsets.symmetric(vertical: 15),
                  decoration: BoxDecoration(
                      border: Border.all(
                          width: 1, color: Color.fromRGBO(64, 124, 226, 0.13))),
                ),
                Text(
                  "Payment Method",
                  style: GoogleFonts.inter(
                      color: AppColors.thirdColor,
                      fontSize: 18,
                      fontWeight: FontWeight.w600),
                ),
                Container(
                  margin: const EdgeInsets.only(top: 10,bottom: 20),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(
                        color: const Color.fromRGBO(
                          64,
                          124,
                          226,
                          0.13,
                        ),
                        width: 1,
                      )),
                  child: Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Row(
                      children: [
                        Text(
                          "VISA",
                          style: GoogleFonts.inter(
                              color: const Color.fromRGBO(26, 31, 113, 1),
                              fontStyle: FontStyle.italic,
                              fontSize: 16,
                              fontWeight: FontWeight.w900),
                        ),
                        const Spacer(),
                        GestureDetector(
                          onTap: () {
                            
                          },
                          child: Text(
                            "Change",
                            style: GoogleFonts.inter(
                                color: AppColors.blackblur,
                                fontSize: 12,
                                fontWeight: FontWeight.w400),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Text(
                      "Total",
                      style: GoogleFonts.inter(
                          color: AppColors.blackblur,
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 10,),
                    
                Row(
                  children: [
                    Text(
                      "\$26.98",
                      style: GoogleFonts.inter(
                          color: AppColors.thirdColor,
                          fontSize: 18,
                          fontWeight: FontWeight.w600),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () => const PaymentDetail(),
                      child: Container(
                        height: 51,
                        width: 136,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: AppColors.secondoryColor,
                          borderRadius: BorderRadius.circular(32),
                        ),
                        child: Center(
                          child: Text(
                            "Checkout",
                            style: GoogleFonts.inter(
                                color: AppColors.primaryColor,
                                fontSize: 14,
                                fontWeight: FontWeight.w600),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ],
              ),
            ),

            
          ],
        ),
      ),
    );
  }
}

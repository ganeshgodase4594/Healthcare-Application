
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare_frontend/screens/mycart.dart';
import 'package:healthcare_frontend/screens/paymentdetil.dart';
import 'package:healthcare_frontend/utils/colors.dart';
import 'package:healthcare_frontend/widget/readmore.dart';


class ProductDetail extends StatefulWidget {
  const ProductDetail({super.key});

  @override
  State<ProductDetail> createState() => _ProductDetailState();
}

class _ProductDetailState extends State<ProductDetail> {
    final String _aboutText =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.primaryColor,
        centerTitle: true,
        title: Text(
          "Pharmacy",
          style: GoogleFonts.poppins(
            color: AppColors.thirdColor,
            fontWeight: FontWeight.w600,
            fontSize: 16,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
            
              Center(child: Image.asset("assets/images/productdetail.png")),
              const SizedBox(
                height: 20,
              ),
              Text(
                "OBH Combi",
                style: GoogleFonts.poppins(
                    color: AppColors.thirdColor,
                    fontSize: 20,
                    fontWeight: FontWeight.w500),
              ),
              Row(
                children: [
                  Text("75ml",
                      style: GoogleFonts.inter(
                          color: AppColors.blackblur,
                          fontSize: 16,
                          fontWeight: FontWeight.w500)),
                          const Spacer(),
                  const Icon(Icons.favorite,color: Colors.red,size: 30,)
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Row(
                    children: [
                      ...List.generate(4, (index) {
                        return const Icon(
                          Icons.star,
                          color: AppColors.secondoryColor,
                          size: 20,
                        );
                      }),
                      const SizedBox(width: 5), 
                      Text(
                        "4.0",
                        style: GoogleFonts.inter(
                            color: AppColors.secondoryColor,
                            fontSize: 14,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                  
                ],
              ),
             
              
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    height: 32,
                    width: 32,
                    decoration: const BoxDecoration(
                    ),
                    child: const Center(
                        child: Icon(
                      Icons.remove,
                      color: AppColors.blackblur,
                      size: 40,
                    )),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Text(
                    "1",
                    style: GoogleFonts.inter(
                        color: AppColors.thirdColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  GestureDetector
                  (
                   onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return MyCart();
                          },));
                   },
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: const BoxDecoration(
                        color: AppColors.secondoryColor,
                      ),
                      child:  const Center(
                          child: Icon(
                        Icons.add,
                        color: AppColors.primaryColor,
                        size: 20,
                      )),
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "\$9.99",
                    style: GoogleFonts.inter(
                        color: AppColors.thirdColor,
                        fontSize: 24,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
              const SizedBox(height: 30,),
              Text(
                "Description",
                style: GoogleFonts.inter(
                    color: AppColors.thirdColor,
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              const SizedBox(height: 10,),
              ReadMoreText(
                    text: _aboutText,
                    textStyle: GoogleFonts.poppins(
                      color: AppColors.blackblur,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                  SizedBox(height: 30,),
                  
                  GestureDetector(
                    onTap: () {
                    Navigator.push(context, MaterialPageRoute(builder: (context)=> const PaymentDetail()));

                    },
                    child: Center(
                      child: Container(
                          height: 51,
                          width: 300,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(32),
                            color: AppColors.secondoryColor,
                          ),
                          child: Center(
                            child: Text(
                              "Buy",
                              style: GoogleFonts.poppins(
                                color: AppColors.primaryColor,
                                fontWeight: FontWeight.w600,
                                fontSize: 16,
                              ),
                            ),
                          )),
                    ),
                  ),
            ],
          ),
        ),
      ),
    );
  }
}

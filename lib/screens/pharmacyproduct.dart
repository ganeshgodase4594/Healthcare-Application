import 'dart:io';

import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare_frontend/screens/productdetail.dart';
import 'package:healthcare_frontend/utils/colors.dart';

class PharmacyProduct extends StatefulWidget {
  const PharmacyProduct({super.key});

  @override
  State<PharmacyProduct> createState() => _PharmacyProductState();
}

class _PharmacyProductState extends State<PharmacyProduct> {
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
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.only(bottom: 20),
                padding: const EdgeInsets.all(15),
                height: 50,
                width: 350,
                decoration: BoxDecoration(
                  color: const Color.fromRGBO(251, 251, 251, 1),
                  border: Border.all(
                      color: const Color.fromRGBO(232, 243, 241, 1), width: 1),
                  borderRadius: BorderRadius.circular(24),
                ),
                child: TextField(
                  decoration: InputDecoration(
                      border: InputBorder.none,
                      disabledBorder: InputBorder.none,
                      hintText: "Search drugs,category.....",
                      prefixIcon: const Icon(
                        Icons.search,
                        color: AppColors.blackblur,
                      ),
                      hintStyle: GoogleFonts.poppins(
                          color: AppColors.blackblur,
                          fontWeight: FontWeight.w400,
                          fontSize: 12)),
                ),
              ),
              Stack(
                children: [
                  Container(
                    padding: EdgeInsets.all(20),
                    height: 135,
                    width: 350,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: Colors.blue.shade50),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(
                          width: 200,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Expanded(
                                child: Text(
                                  "Order quickly with Prescription",
                                  style: GoogleFonts.poppins(
                                    color: AppColors.thirdColor,
                                    fontWeight: FontWeight.w600,
                                    fontSize: 16,
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              GestureDetector(
                                onTap: () async {
                                  FilePickerResult? result =
                                      await FilePicker.platform.pickFiles();
        
                                  if (result != null) {
                                    File file = File(result.files.single.path!);
                                  } else {
                                    // User canceled the picker
                                  }
                                },
                                child: Container(
                                  height: 30,
                                  width: 136,
                                  decoration: BoxDecoration(
                                    color: AppColors.secondoryColor,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                  child: Center(
                                    child: Text(
                                      "Upload Prescription",
                                      style: GoogleFonts.poppins(
                                        color: AppColors.primaryColor,
                                        fontWeight: FontWeight.w600,
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                            height: 150,
                            width: 110,
                            child: Image.asset(
                              "assets/images/medical2.png",
                              fit: BoxFit.cover,
                            )),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Text(
                    "Popular Product",
                    style: GoogleFonts.poppins(
                      color: AppColors.thirdColor,
                      fontWeight: FontWeight.w600,
                      fontSize: 16,
                    ),
                  ),
                  const Spacer(),
                  Text(
                    "See all",
                    style: GoogleFonts.poppins(
                      color: AppColors.secondoryColor,
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 190,
                child: ListView.builder(
                    //physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () {
                           Navigator.push(context, MaterialPageRoute(builder: (context) {
                            return ProductDetail();
                          },));
                        },
                        child: Container(
                          margin: const EdgeInsets.only(right: 15),
                          padding: const EdgeInsets.all(15),
                          height: 190,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                width: 1,
                                color: Color.fromRGBO(64, 124, 226, 0.12)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                  child: Container(
                                height: 70,
                                width: 80,
                                child: Image.asset(
                                  "assets/images/medical1.png",
                                  fit: BoxFit.cover,
                                ),
                              )),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Panadol",
                                style: GoogleFonts.poppins(
                                  color: AppColors.thirdColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "20pcs",
                                style: GoogleFonts.poppins(
                                  color: AppColors.blackblur,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 9,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$15.99",
                                    style: GoogleFonts.poppins(
                                      color: AppColors.thirdColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const Spacer(),
                                  Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.secondoryColor,
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      child: const Center(
                                          child: Icon(
                                        Icons.add,
                                        color: AppColors.primaryColor,
                                      )))
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20, bottom: 20),
                child: Row(
                  children: [
                    Text(
                      "Product on sale",
                      style: GoogleFonts.poppins(
                        color: AppColors.thirdColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 16,
                      ),
                    ),
                    const Spacer(),
                    Text(
                      "See all",
                      style: GoogleFonts.poppins(
                        color: AppColors.secondoryColor,
                        fontWeight: FontWeight.w400,
                        fontSize: 12,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: 190,
                child: ListView.builder(
                    //physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 10,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return GestureDetector(
                        onTap: () => const ProductDetail(),
                        child: Container(
                          margin: const EdgeInsets.only(right: 15),
                          padding: const EdgeInsets.all(15),
                          height: 190,
                          width: 150,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15),
                            border: Border.all(
                                width: 1,
                                color: Color.fromRGBO(64, 124, 226, 0.12)),
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Center(
                                  child: Container(
                                height: 70,
                                width: 80,
                                child: Image.asset(
                                  "assets/images/medical1.png",
                                  fit: BoxFit.cover,
                                ),
                              )),
                              const SizedBox(
                                height: 20,
                              ),
                              Text(
                                "Panadol",
                                style: GoogleFonts.poppins(
                                  color: AppColors.thirdColor,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                ),
                              ),
                              Text(
                                "20pcs",
                                style: GoogleFonts.poppins(
                                  color: AppColors.blackblur,
                                  fontWeight: FontWeight.w500,
                                  fontSize: 9,
                                ),
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Row(
                                children: [
                                  Text(
                                    "\$15.99",
                                    style: GoogleFonts.poppins(
                                      color: AppColors.thirdColor,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 16,
                                    ),
                                  ),
                                  const SizedBox(width: 5,),
                                  Text(
                                    "\$15.99",
                                    style: GoogleFonts.poppins(
                                      color: AppColors.blackblur,
                                      fontWeight: FontWeight.w600,
                                      fontSize: 8,
                                      decoration: TextDecoration.lineThrough
                                    ),
                                  ),
                                  
                                  const Spacer(),
                                  Container(
                                      decoration: BoxDecoration(
                                        color: AppColors.secondoryColor,
                                        borderRadius: BorderRadius.circular(2),
                                      ),
                                      child: const Center(
                                          child: Icon(
                                        Icons.add,
                                        color: AppColors.primaryColor,
                                      )))
                                ],
                              ),
                            ],
                          ),
                        ),
                      );
                    }),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

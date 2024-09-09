import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:healthcare_frontend/screens/doctordetail.dart';
import 'package:healthcare_frontend/screens/pharmacyproduct.dart';
import 'package:healthcare_frontend/screens/topdoctors.dart';
import 'package:healthcare_frontend/utils/colors.dart';
import 'package:provider/provider.dart';

import '../model/articlemodel.dart';
import '../provider/bookmark.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<ArticleData> articles = [
    ArticleData(
      title:
          "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist",
      date: "Jun 10, 2023",
      readTime: "5min read",
      imagePath: "assets/images/article1.png",
    ),
    ArticleData(
      title:
          "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist",
      date: "Jun 10, 2023",
      readTime: "5min read",
      imagePath: "assets/images/article1.png",
    ),
    ArticleData(
      title:
          "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist",
      date: "Jun 10, 2023",
      readTime: "5min read",
      imagePath: "assets/images/article1.png",
    ),
  ];

  // Load articles into the bookmark provider

  @override
  Widget build(BuildContext context) {
    final bookmarkProvider =
        Provider.of<BookmarkProvider>(context, listen: false);

    bookmarkProvider.loadArticles(articles);

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
                      GestureDetector(
                        onTap: () => TopDocrors(),
                        child: buildOption(
                          iconPath: "assets/images/Doctor.png",
                          label: "Top Doctors",
                        ),
                      ),
                      GestureDetector(
                        onTap: () => const PharmacyProduct(),
                        child: buildOption(
                          iconPath: "assets/images/Pharmacy.png",
                          label: "Pharmacy",
                        ),
                      ),
                      buildOption(
                        iconPath: "assets/images/ambulance.png",
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
                  // Container(
                  //   height: 200,
                  //   width: double.infinity,
                  //   child: ListView.builder(
                  //     itemCount: 15,
                  //     itemBuilder: (context, index) {
                  //       return Padding(
                  //         padding: const EdgeInsets.symmetric(horizontal: 20),
                  //         child: Container(
                  //           margin: EdgeInsets.only(bottom: 10),
                  //           decoration: BoxDecoration(
                  //               border: Border.all(
                  //                   color:
                  //                       const Color.fromRGBO(34, 31, 31, 0.1)),
                  //               borderRadius: BorderRadius.circular(10)),
                  //           child: Padding(
                  //             padding: const EdgeInsets.all(10.0),
                  //             child: Row(
                  //               crossAxisAlignment: CrossAxisAlignment.start,
                  //               children: [
                  //                 Column(
                  //                   children: [
                  //                     Container(
                  //                       margin: EdgeInsets.only(right: 15),
                  //                       decoration: BoxDecoration(
                  //                         borderRadius:
                  //                             BorderRadius.circular(6),
                  //                       ),
                  //                       child: Image.asset(
                  //                           "assets/images/article1.png"),
                  //                     )
                  //                   ],
                  //                 ),
                  //                 Expanded(
                  //                   child: Column(
                  //                     crossAxisAlignment:
                  //                         CrossAxisAlignment.start,
                  //                     // mainAxisAlignment: MainAxisAlignment.start,
                  //                     children: [
                  //                       Text(
                  //                         textAlign: TextAlign.start,
                  //                         "The 25 Healthiest Fruits You Can Eat, According to a Nutritionist",
                  //                         style: GoogleFonts.poppins(
                  //                           color: const Color.fromRGBO(
                  //                               86, 86, 86, 1),
                  //                           fontWeight: FontWeight.w600,
                  //                           fontSize: 10,
                  //                         ),
                  //                       ),
                  //                       const SizedBox(
                  //                         height: 2,
                  //                       ),
                  //                       Row(
                  //                         children: [
                  //                           Text(
                  //                             textAlign: TextAlign.start,
                  //                             "Jun 10,2023",
                  //                             style: GoogleFonts.poppins(
                  //                               color: AppColors.blackblur,
                  //                               fontWeight: FontWeight.w600,
                  //                               fontSize: 10,
                  //                             ),
                  //                           ),
                  //                           const SizedBox(
                  //                             width: 10,
                  //                           ),
                  //                           Text(
                  //                             textAlign: TextAlign.start,
                  //                             "5min read",
                  //                             style: GoogleFonts.poppins(
                  //                               color: AppColors.blackblur,
                  //                               fontWeight: FontWeight.w600,
                  //                               fontSize: 10,
                  //                             ),
                  //                           ),
                  //                         ],
                  //                       ),
                  //                     ],
                  //                   ),
                  //                 ),
                  //                 //const Spacer(),
                  //                 const SizedBox(
                  //                   width: 50,
                  //                 ),
                  //                 Column(
                  //                   children: [
                  //                     GestureDetector(
                  //                       onTap: () {},
                  //                       child: const Icon(
                  //                         Icons.bookmark,
                  //                         color: AppColors.secondoryColor,
                  //                       ),
                  //                     )
                  //                   ],
                  //                 )
                  //               ],
                  //             ),
                  //           ),
                  //         ),
                  //       );
                  //     },
                  //   ),
                  // )

                  Expanded(
                    child: ListView.builder(
                      itemCount: articles.length,
                      itemBuilder: (context, index) {
                        final article = articles[index];
                        return Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Container(
                            margin: const EdgeInsets.only(bottom: 10),
                            decoration: BoxDecoration(
                              border: Border.all(
                                  color: const Color.fromRGBO(34, 31, 31, 0.1)),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(10.0),
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                    margin: const EdgeInsets.only(right: 15),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(6),
                                    ),
                                    child: Image.asset(article.imagePath),
                                  ),
                                  Expanded(
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          article.title,
                                          style: GoogleFonts.poppins(
                                            color: const Color.fromRGBO(
                                                86, 86, 86, 1),
                                            fontWeight: FontWeight.w600,
                                            fontSize: 10,
                                          ),
                                        ),
                                        const SizedBox(height: 2),
                                        Row(
                                          children: [
                                            Text(
                                              article.date,
                                              style: GoogleFonts.poppins(
                                                color: const Color.fromARGB(
                                                    255, 94, 90, 90),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 10,
                                              ),
                                            ),
                                            const SizedBox(width: 10),
                                            Text(
                                              article.readTime,
                                              style: GoogleFonts.poppins(
                                                color: const Color.fromARGB(
                                                    255, 94, 90, 90),
                                                fontWeight: FontWeight.w600,
                                                fontSize: 10,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  Consumer<BookmarkProvider>(
                                    builder:
                                        (context, bookmarkProvider, child) {
                                      final isBookmarked = bookmarkProvider
                                          .isBookmarked(article);

                                      return IconButton(
                                        onPressed: () {
                                          if (isBookmarked) {
                                            bookmarkProvider
                                                .removeBookmark(article);
                                          } else {
                                            bookmarkProvider
                                                .addBookmark(article);
                                          }
                                        },
                                        icon: Icon(
                                          isBookmarked
                                              ? Icons.bookmark
                                              : Icons.bookmark_border,
                                          color: Colors.blue,
                                        ),
                                      );
                                    },
                                  ),
                                ],
                              ),
                            ),
                          ),
                        );
                      },
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

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import '../provider/bookmark.dart';

class BookmarkPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Bookmarks')),
      body: Consumer<BookmarkProvider>(
        builder: (context, bookmarkProvider, child) {
          final bookmarkedArticles = bookmarkProvider.bookmarkedArticles;

          if (bookmarkedArticles.isEmpty) {
            return Center(child: Text('No bookmarks added.'));
          }

          return ListView.builder(
            itemCount: bookmarkedArticles.length,
            itemBuilder: (context, index) {
              final article = bookmarkedArticles[index];
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
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                article.title,
                                style: GoogleFonts.poppins(
                                  color: const Color.fromRGBO(86, 86, 86, 1),
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
                                      color:
                                          const Color.fromARGB(255, 94, 90, 90),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10,
                                    ),
                                  ),
                                  const SizedBox(width: 10),
                                  Text(
                                    article.readTime,
                                    style: GoogleFonts.poppins(
                                      color:
                                          const Color.fromARGB(255, 94, 90, 90),
                                      fontWeight: FontWeight.w600,
                                      fontSize: 10,
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
                ),
              );
            },
          );
        },
      ),
    );
  }
}

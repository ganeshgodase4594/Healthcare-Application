import 'package:flutter/material.dart';

import '../model/articlemodel.dart';

class BookmarkProvider extends ChangeNotifier {
  final List<ArticleData> _bookmarkedArticles = [];
  final List<ArticleData> _allArticles = [];

  void loadArticles(List<ArticleData> articles) {
    _allArticles.addAll(articles);
  }

  List<ArticleData> get bookmarkedArticles => _bookmarkedArticles;

  bool isBookmarked(ArticleData article) =>
      _bookmarkedArticles.contains(article);

  void addBookmark(ArticleData article) {
    if (!_bookmarkedArticles.contains(article)) {
      _bookmarkedArticles.add(article);
      notifyListeners();
    }
  }

  void removeBookmark(ArticleData article) {
    _bookmarkedArticles.remove(article);
    notifyListeners();
  }
}

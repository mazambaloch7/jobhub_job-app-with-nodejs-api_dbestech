import 'package:flutter/material.dart';

class OnBoardNotifier extends ChangeNotifier {
  
  bool _isLastPage = false;

  bool get isLastPage => _isLastPage;

  set isLastPage (bool lastpage) {
    _isLastPage = lastpage;
    notifyListeners();
  }
}

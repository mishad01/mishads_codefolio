import 'package:flutter/material.dart';

class StackSliderProvider extends ChangeNotifier {
  int _currentIndex;

  StackSliderProvider({required int initialIndex})
    : _currentIndex = initialIndex;

  int get currentIndex => _currentIndex;

  void updateIndex(int index, int itemCount) {
    _currentIndex = index % itemCount;
    notifyListeners();
  }
}

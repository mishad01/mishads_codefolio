import 'package:flutter/foundation.dart';

class ProjectBarViewModel extends ChangeNotifier {
  int _selectedIndex = 0;

  final List<String> _categories = ['All', 'Flutter', 'Kotlin', 'ML/DL'];

  int get selectedIndex => _selectedIndex;
  List<String> get categories => List.unmodifiable(_categories);

  void changeIndex(int index) {
    if (index >= 0 && index < _categories.length) {
      _selectedIndex = index;
      notifyListeners();
    }
  }
}

import 'package:flutter/cupertino.dart';

class HomeProvider extends ChangeNotifier {
  int _selectedIndex = 1;

  int get selectedIndex => _selectedIndex;

  void updateSelectedIndex(int index) {
    _selectedIndex = index;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class HomeScreenModel extends ChangeNotifier {
  bool _isFollowingSelected = false;

  bool get isFollowingSelected => _isFollowingSelected;

  set isFollowingSelected(bool value) {
    _isFollowingSelected = value;
    notifyListeners();
  }
}

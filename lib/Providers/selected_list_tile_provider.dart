import 'package:flutter/material.dart';

class SelectedListTileProvider with ChangeNotifier {
  Map<String, dynamic>? _selectedListTile;

  Map<String, dynamic>? get selectedListTile => _selectedListTile;

  void setSelectedListTile(Map<String, dynamic> listTile) {
    _selectedListTile = listTile;
    notifyListeners();
  }
}

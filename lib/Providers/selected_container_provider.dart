import 'package:flutter/foundation.dart';

class SelectedContainerProvider with ChangeNotifier {
  int _selectedContainerIndex = -1;

  int get selectedContainerIndex => _selectedContainerIndex;

  set selectedContainerIndex(int index) {
    _selectedContainerIndex = index;
    notifyListeners();
  }
}

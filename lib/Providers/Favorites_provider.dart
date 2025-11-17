import 'package:flutter/widgets.dart';

class FavoritesProvider with ChangeNotifier {
  List<int> _selectedItem = [];

  List<int> get selectedItem => _selectedItem;

  void addItem(int value) {
    selectedItem.add(value);
    notifyListeners();
  }

  void removeItem(int value) {
    selectedItem.remove(value);
    notifyListeners();
  }
}

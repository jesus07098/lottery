import 'package:flutter/material.dart';

class SellProvider extends ChangeNotifier {
  List<String> _selectedItems;
  SellProvider(this._selectedItems);
  List<String> get SelectedItems => _selectedItems;
  bool isHaveItem(String value) => _selectedItems.contains(value);

  addItem(String value) {
    if (!isHaveItem(value)) {
      _selectedItems.add(value);
      notifyListeners();
    }
  }
  removeItem(String value) {
    if (isHaveItem(value)) {
      _selectedItems.add(value);
      notifyListeners();
    }
  }
}

import 'package:flutter/material.dart';
import 'item.dart';

class CartModel with ChangeNotifier {
  List<Item> _items = [];
  int _r = 0;

  void add(Item item) {
    _items.add(item);
    item.repetidos = item.repetidos! + 1;
    notifyListeners();
  }

  void remove(Item item) {
    _items.remove(item);
    item.repetidos = item.repetidos! - 1;
    notifyListeners();
  }

  int get cout {
    return _items.length;
  }

  int get repetidos{
    return _r;
  }

  List<Item> get cartItem {
    return _items.toSet().toList();
  }
}

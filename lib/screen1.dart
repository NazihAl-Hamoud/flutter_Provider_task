import 'package:flutter/material.dart';

class ProductProvider extends ChangeNotifier {
  List<String> availableProducts = ['Nazih', 'Ayham', 'Hamza', 'Mazen'];
  List<String> movedProducts = [];

  void moveProduct(String product) {
    movedProducts.add(product);
    notifyListeners();
  }
}

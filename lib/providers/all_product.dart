import 'dart:math';
import 'package:flutter/material.dart';

import '../models/product.dart';

class Products with ChangeNotifier {
  final List<Product> _allproducts = List.generate(
    6,
    (index) {
      return Product(
        id: "id_${index + 1}",
        title: "Produk ${index + 1}",
        description: 'Ini adalah deskripsi produk ${index + 1}',
        price: 100000 + Random().nextInt(100),
        image: 'images/dashboard/${index + 1}.png',
        // qty: 1,
      );
    },
  );

  List<Product> get allproducts {
    return [..._allproducts];
  }

  Product findById(productId) {
    return _allproducts.firstWhere((prodId) => prodId.id == productId);
  }

  // void addProduct() {
  //   _allproducts.add(value);
  //   notifyListeners();
  // }
}

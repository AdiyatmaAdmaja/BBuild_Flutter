import 'package:flutter/foundation.dart';

class Product {
  final String? id;
  final String? title;
  final String? description;
  final double? price;
  // final int? qty;
  final String? image;
  bool isFavorite;

  Product({
    @required this.id,
    @required this.title,
    @required this.description,
    @required this.price,
    // @required this.qty,
    @required this.image,
    this.isFavorite = false,
  });
}

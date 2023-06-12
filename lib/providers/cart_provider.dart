// import 'package:bbuild/models/product.dart';
// import 'package:bbuild/widgets/itemProduk.dart';
// import 'package:flutter/material.dart';
// import 'package:bbuild/models/cart_item.dart';

// class Cart with ChangeNotifier {
//   Map<String, CartItem> _items = {};

//   Map<String, CartItem> get item = _items;

//   double get total {
//     var totalPrice = 0.0;
//     _items.forEach((key, cartItem) {
//       totalPrice += cartItem.qty * cartItem.price;
//     });
//     return totalPrice;
//   }

//   void addToCart(
//       String productId, String productImg, String title, double price) {
//     if (_items.containsKey(productId)) {
//       _items.update(
//         productId,
//         (existingCartItem) => CartItem(
//           id: existingCartItem.id,
//           image: existingCartItem.image,
//           title: existingCartItem.title,
//           price: existingCartItem.price,
//           qty: existingCartItem.qty + 1,
//         ),
//       );
//     } else {
//       _items.putIfAbsent(
//         productId,
//         () => CartItem(
//           id: DateTime.now().toString(),
//           image: productImg,
//           title: title,
//           price: price,
//           qty: 1,
//         ),
//       );
//     }
//     notifyListeners();
//   }

//   void removeFromCart(String productId) {
//     if (!_items.containsKey(productId)) return;
//     if (_items[productId]!.qty > 1) {
//       _items.update(
//         productId,
//         (existingCartItem) => CartItem(
//           id: existingCartItem.id,
//           image: existingCartItem.image,
//           title: existingCartItem.title,
//           price: existingCartItem.price,
//           qty: existingCartItem.qty - 1,
//         ),
//       );
//     } else {
//       _items.remove(productId);
//     }
//     notifyListeners();
//   }

//   void clearCart() {
//     _items = {};
//     notifyListeners();
//   }
// }

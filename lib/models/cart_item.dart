class CartItem {
  String? id;
  String? title;
  String? image;
  double? price;
  int? qty;

  CartItem({
    required this.id,
    required this.title,
    required this.image,
    required this.price,
    required this.qty,
  });

  factory CartItem.fromMap(Map<String, dynamic> map) {
    return CartItem(
      id: map['id'],
      title: map['title'],
      image: map['image'],
      price: map['price'].toDouble(),
      qty: map['qty'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'title': title,
      'itemImg': image,
      'price': price,
      'qty': qty,
    };
  }
}

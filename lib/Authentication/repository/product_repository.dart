import 'package:cloud_firestore/cloud_firestore.dart';

class ProductRepository {
  static FirebaseFirestore firestore = FirebaseFirestore.instance;

  static CollectionReference products = firestore.collection('products');

  static Stream<QuerySnapshot> get productStream => products.snapshots();
}

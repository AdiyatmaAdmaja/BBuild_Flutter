import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/all_product.dart';
import './itemProduk.dart';

class ProductGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final productData = Provider.of<Products>(context);

    final allproduct = productData.allproducts;

    return GridView.builder(
      padding: const EdgeInsets.all(10.0),
      itemCount: allproduct.length,
      itemBuilder: (ctx, i) => ProductItem(
        allproduct[i].id.toString(),
        allproduct[i].title.toString(),
        allproduct[i].description.toString(),
        allproduct[i].price.toString(),
        allproduct[i].image.toString(),
      ),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        childAspectRatio: 0.70,
        crossAxisCount: 2,
      ),
    );
  }
}

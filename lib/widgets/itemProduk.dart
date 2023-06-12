import 'package:bbuild/IsiDashboard/ItemPage.dart';
import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String id;
  final String title;
  final String description;
  final String price;
  final String image;

  ProductItem(this.id, this.title, this.description, this.price, this.image);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
      margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        border: Border.all(
          strokeAlign: 1,
          color: const Color.fromARGB(255, 255, 229, 93),
        ),
      ),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Icon(
                Icons.favorite_border,
                color: Colors.red,
              )
            ],
          ),
          GestureDetector(
            onTap: () {
              Navigator.of(context).pushNamed(
                ItemPage.routeName,
                arguments: id,
              );
            },
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.all(10),
                  child: Image.asset(
                    image,
                    height: 100,
                    width: 100,
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(bottom: 5),
                  alignment: Alignment.centerLeft,
                  child: Text(
                    title,
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: 5,
                  ),
                  child: Row(
                    children: [
                      Text(
                        "\Rp.$price",
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

import 'package:flutter/material.dart';

class ItemDiskon extends StatelessWidget {
  const ItemDiskon({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: [
          for (int i = 1; i < 7; i++)
            Container(
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          color: const Color.fromARGB(255, 255, 229, 93),
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          '-50%',
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 14,
                          ),
                        ),
                      ),
                      const Icon(
                        Icons.favorite_border,
                        color: Colors.red,
                      )
                    ],
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.pushNamed(context, "itemPage");
                    },
                    child: Container(
                      margin: const EdgeInsets.all(10),
                      child: Image.asset(
                        'images/dashboard/$i.png',
                        height: 100,
                        width: 100,
                      ),
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 8),
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Nama Produk',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Container(
                    alignment: Alignment.centerLeft,
                    child: const Text(
                      'Deskripsi dari Produk',
                      style: TextStyle(fontSize: 15),
                    ),
                  ),
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      vertical: 10,
                    ),
                    child: Row(
                      children: [
                        Text(
                          'Rp59.000',
                          style: TextStyle(
                              fontSize: 15,
                              decoration: TextDecoration.lineThrough,
                              color: Colors.red),
                        ),
                        Text(
                          'Rp29.000',
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

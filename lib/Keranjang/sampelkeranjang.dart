import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';

class SampelKeranjang extends StatelessWidget {
  const SampelKeranjang({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        for (int i = 1; i < 6; i++)
          Container(
            height: 110,
            margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
            padding: const EdgeInsets.all(10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                Radio(
                  value: '',
                  groupValue: '',
                  activeColor: const Color.fromRGBO(255, 190, 79, 100),
                  onChanged: (index) {},
                ),
                Container(
                    height: 70,
                    width: 70,
                    margin: const EdgeInsets.only(right: 15),
                    child: Image.asset(
                      'images/dashboard/$i.png',
                    )),
                const Padding(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Nama Produk',
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      Text(
                        'RP.99.000',
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      )
                    ],
                  ),
                ),
                const Spacer(),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 5),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Icon(
                        LineAwesomeIcons.trash,
                        color: Colors.red,
                      ),
                      Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                  )
                                ]),
                            child: const Icon(
                              CupertinoIcons.plus,
                              size: 18,
                              color: Colors.black,
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.symmetric(horizontal: 10),
                            child: const Text(
                              '1',
                              style: TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                          ),
                          Container(
                            padding: const EdgeInsets.all(4),
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(20),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 10,
                                  )
                                ]),
                            child: const Icon(
                              CupertinoIcons.minus,
                              size: 18,
                              color: Colors.black,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
      ],
    );
  }
}


// import 'package:bbuild/Authentication/controller/cart_controller.dart';
// import 'package:bbuild/models/product.dart';
// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:get/get.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';

// class SampelKeranjang extends StatelessWidget {
//   final CartController controller = Get.find();
//   SampelKeranjang({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return SizedBox(
//       height: 600,
//       child: ListView.builder(
//           itemCount: controller.products.le,
//           itemBuilder: (BuildContext context, int index) {
//             return CartProductCard();
//           }),
//     );
//   }
// }

// class CartProductCard extends StatelessWidget {
//   final CartController controller;
//   final Product product;
//   final int qty;
//   final int index;

//   const CartProductCard({
//     Key? key,
//     required this.controller,
//     required this.product,
//     required this.qty,
//     required this.index,
//   }) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       height: 110,
//       margin: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
//       padding: const EdgeInsets.all(10),
//       decoration: BoxDecoration(
//         color: Colors.white,
//         borderRadius: BorderRadius.circular(10),
//       ),
//       child: Row(
//         children: [
//           Container(
//               height: 70,
//               width: 70,
//               margin: const EdgeInsets.only(right: 15),
//               child: Image.asset(
//                 '${product.image}',
//               )),
//           Padding(
//             padding: EdgeInsets.symmetric(vertical: 10),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Text(
//                   '${product.title}',
//                   style: TextStyle(
//                       fontSize: 18,
//                       fontWeight: FontWeight.bold,
//                       color: Colors.black),
//                 ),
//                 Text(
//                   '${product.price}',
//                   style: TextStyle(
//                     fontSize: 15,
//                     fontWeight: FontWeight.bold,
//                     color: Colors.black,
//                   ),
//                 )
//               ],
//             ),
//           ),
//           const Spacer(),
//           Padding(
//             padding: const EdgeInsets.symmetric(vertical: 5),
//             child: Column(
//               crossAxisAlignment: CrossAxisAlignment.end,
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 const Icon(
//                   LineAwesomeIcons.trash,
//                   color: Colors.red,
//                 ),
//                 Row(
//                   children: [
//                     Container(
//                       padding: const EdgeInsets.all(4),
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(20),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey.withOpacity(0.5),
//                               spreadRadius: 1,
//                               blurRadius: 10,
//                             )
//                           ]),
//                       child: InkWell(
//                         onTap: () {
//                           controller.addProduct(product);
//                         },
//                         child: Icon(
//                           CupertinoIcons.plus,
//                           size: 18,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       margin: const EdgeInsets.symmetric(horizontal: 10),
//                       child: Text(
//                         '${qty}',
//                         style: TextStyle(
//                           fontSize: 16,
//                           fontWeight: FontWeight.bold,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                     Container(
//                       padding: const EdgeInsets.all(4),
//                       decoration: BoxDecoration(
//                           color: Colors.white,
//                           borderRadius: BorderRadius.circular(20),
//                           boxShadow: [
//                             BoxShadow(
//                               color: Colors.grey.withOpacity(0.5),
//                               spreadRadius: 1,
//                               blurRadius: 10,
//                             )
//                           ]),
//                       child: InkWell(
//                         onTap: () {
//                           controller.removeProduct(product);
//                         },
//                         child: Icon(
//                           CupertinoIcons.minus,
//                           size: 18,
//                           color: Colors.black,
//                         ),
//                       ),
//                     ),
//                   ],
//                 )
//               ],
//             ),
//           )
//         ],
//       ),
//     );
//   }
// }

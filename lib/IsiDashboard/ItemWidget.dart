import 'package:flutter/material.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';
// import 'package:project1/IsiDashboard/ItemPage.dart';

class WidgetBarangDB extends StatelessWidget {
  const WidgetBarangDB({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      childAspectRatio: 0.70,
      crossAxisCount: 2,
      shrinkWrap: true,
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
                const Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
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
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
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
                        style: TextStyle(fontSize: 15),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
      ],
    );
  }
}

// Bingung cara ngasi nilai variabelnya
// class WidgetBarangDB extends StatelessWidget {
//   final String id;
//   final String title;
//   final String description;
//   final String price;
//   final String image;

//   WidgetBarangDB(this.id, this.title, this.description, this.price, this.image);
//   @override
//   Widget build(BuildContext context) {
//     return GridView.count(
//       childAspectRatio: 0.70,
//       crossAxisCount: 2,
//       shrinkWrap: true,
//       children: [
//         for (int i = 1; i < 7; i++)
//           Container(
//             padding: const EdgeInsets.only(top: 8, right: 8, left: 8),
//             margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 10),
//             decoration: BoxDecoration(
//               borderRadius: BorderRadius.circular(20),
//               border: Border.all(
//                 strokeAlign: 1,
//                 color: const Color.fromARGB(255, 255, 229, 93),
//               ),
//             ),
//             child: Column(
//               children: [
//                 const Row(
//                   mainAxisAlignment: MainAxisAlignment.end,
//                   children: [
//                     Icon(
//                       Icons.favorite_border,
//                       color: Colors.red,
//                     )
//                   ],
//                 ),
//                 GestureDetector(
//                   onTap: () {
//                     Navigator.of(context).pushNamed(
//                       ItemPage.routeName,
//                       arguments: id,
//                     );
//                   },
//                   child: Column(
//                     children: [
//                       Container(
//                         margin: const EdgeInsets.all(10),
//                         child: Image.asset(
//                           image,
//                           height: 100,
//                           width: 100,
//                         ),
//                       ),
//                       Container(
//                         padding: const EdgeInsets.only(bottom: 5),
//                         alignment: Alignment.centerLeft,
//                         child: Text(
//                           title,
//                           style: TextStyle(
//                               fontSize: 20, fontWeight: FontWeight.bold),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.symmetric(
//                           vertical: 5,
//                         ),
//                         child: Row(
//                           children: [
//                             Text(
//                               "\Rp.$price",
//                               style: TextStyle(fontSize: 15),
//                             )
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//       ],
//     );
//   }
// }
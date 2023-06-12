import 'package:flutter/material.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:bbuild/IsiTaskbar/alamatpengiriman.dart';
import 'package:bbuild/Keranjang/sampelkeranjang.dart';
// import '../dashboard.dart';
import 'cartbottombavbar.dart';

class Keranjang extends StatelessWidget {
  const Keranjang({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 229, 93),
        title: const Text(
          'Keranjang',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: ListView(
        children: [
          Container(
            padding: const EdgeInsets.only(top: 15),
            decoration: const BoxDecoration(
              color: Color.fromRGBO(217, 217, 217, 1),
            ),
            child: Column(
              children: [
                Container(
                  padding: const EdgeInsets.only(right: 5, left: 5, bottom: 5),
                  color: Colors.white,
                  child: Column(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Text(
                              'Alamat Pengiriman',
                              style: TextStyle(
                                  fontSize: 15, fontWeight: FontWeight.bold),
                            ),
                            InkWell(
                              child: const Text(
                                'Pilih Alamat Lain>',
                                style: TextStyle(
                                    fontSize: 15,
                                    fontWeight: FontWeight.bold,
                                    color: Colors.deepOrange),
                              ),
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) =>
                                        const AlamatPengiriman(),
                                  ),
                                );
                              },
                            ),
                          ],
                        ),
                      ),
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: BoxDecoration(
                            border: Border.all(color: Colors.black),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(20))),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const Text(
                                  'Rumah',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                const SizedBox(width: 5),
                                Container(
                                  padding: const EdgeInsets.all(5),
                                  decoration: BoxDecoration(
                                    color:
                                        const Color.fromARGB(255, 255, 229, 93),
                                    borderRadius: BorderRadius.circular(20),
                                  ),
                                  child: const Text(
                                    'Utama',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.black),
                                  ),
                                )
                              ],
                            ),
                            const Text(
                              'Nama Penerima',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            const Text(
                              'Nomor Telpon',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                            const Text(
                              'Alamat ',
                              style: TextStyle(
                                fontSize: 12,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                SampelKeranjang(),
              ],
            ),
          ),
        ],
      ),
      backgroundColor: const Color.fromRGBO(217, 217, 217, 1),
      bottomNavigationBar: const CartBottomNavBar(),
    );
  }
}

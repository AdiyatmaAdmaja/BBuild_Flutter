import 'package:bbuild/pembayaranbavbar.dart';
import 'package:flutter/material.dart';

class Pembayaran extends StatefulWidget {
  const Pembayaran({super.key});

  @override
  State<Pembayaran> createState() => _PembayaranState();
}

class _PembayaranState extends State<Pembayaran> {
  int _value = 1;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Pilih Pembayaran",
            style: TextStyle(color: Colors.black)),
        backgroundColor: const Color.fromARGB(255, 255, 229, 93),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Container(
                padding: const EdgeInsets.only(top: 15),
                decoration: const BoxDecoration(
                  color: Color.fromRGBO(217, 217, 217, 1),
                ),
                child: Column(
                  children: [
                    Container(
                      padding:
                          const EdgeInsets.only(right: 5, left: 5, bottom: 5),
                      color: Colors.white,
                      child: Column(
                        children: [
                          Container(
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text(
                                  'Metode Pembayaran',
                                  style: TextStyle(
                                      fontSize: 15,
                                      fontWeight: FontWeight.bold),
                                ),
                                InkWell(
                                  child: const Text(
                                    'Lihat Semua',
                                    style: TextStyle(
                                        fontSize: 15,
                                        fontWeight: FontWeight.bold,
                                        color: Colors.deepOrange),
                                  ),
                                  onTap: () {},
                                ),
                              ],
                            ),
                          ),
                          Container(
                            height: 85,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio(
                                  activeColor:
                                      const Color.fromARGB(255, 255, 229, 93),
                                  value: 1,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value!;
                                    });
                                  },
                                ),
                                const SizedBox(width: 10),
                                SizedBox(
                                  height: 85,
                                  width: 85,
                                  child: Image.asset(
                                    'images/mandiri.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  'Mandiri Virtual Account',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            height: 85,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.black),
                            ),
                            padding: const EdgeInsets.all(10),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Radio(
                                  activeColor:
                                      const Color.fromARGB(255, 255, 229, 93),
                                  value: 2,
                                  groupValue: _value,
                                  onChanged: (value) {
                                    setState(() {
                                      _value = value!;
                                    });
                                  },
                                ),
                                const SizedBox(width: 10),
                                SizedBox(
                                  height: 85,
                                  width: 85,
                                  child: Image.asset(
                                    'images/BCA.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                const SizedBox(width: 10),
                                const Text(
                                  'BCA Virtual Account',
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 16,
                                      fontWeight: FontWeight.bold),
                                )
                              ],
                            ),
                          ),
                          const SizedBox(height: 10),
                          Container(
                            alignment: Alignment.topLeft,
                            child: const Column(
                              children: [
                                Text(
                                  'Total Belanja: IDR 399.000',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                                Text(
                                  'Biaya Admin: IDR 1.000',
                                  style: TextStyle(
                                      fontSize: 20, color: Colors.black),
                                ),
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
      bottomNavigationBar: const PembayaranBottomNavBar(),
    );
  }
}

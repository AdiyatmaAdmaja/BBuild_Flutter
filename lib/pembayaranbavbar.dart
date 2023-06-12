import 'package:flutter/material.dart';
// import 'package:project1/pembayaran.dart';

class PembayaranBottomNavBar extends StatelessWidget {
  const PembayaranBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      child: Container(
        color: const Color.fromARGB(255, 255, 229, 93),
        padding: const EdgeInsetsDirectional.symmetric(horizontal: 20, vertical: 15),
        height: 150,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Harga:',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                ),
                Text(
                  'IDR 400.000',
                  style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Colors.black),
                )
              ],
            ),
            InkWell(
              child: Container(
                alignment: Alignment.center,
                height: 35,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  'Bayar',
                  style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 229, 93)),
                ),
              ),
              onTap: () {},
            ),
          ],
        ),
      ),
    );
  }
}

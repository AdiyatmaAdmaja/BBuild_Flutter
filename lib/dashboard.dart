// import 'dart:ffi';
// import 'package:carousel_slider/carousel_slider.dart';
// import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:bbuild/IsiDashboard/DealsWidget.dart';
import 'package:bbuild/IsiDashboard/DiscountItems.dart';
// import 'package:project1/Keranjang/keranjang.dart';
import 'IsiDashboard/ItemWidget.dart';
// import 'userprofile.dart';
import 'package:flutter/material.dart';

class dashboards extends StatelessWidget {
  const dashboards({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false, home: dashboard());
  }
}

class dashboard extends StatelessWidget {
  const dashboard({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: const Color.fromARGB(255, 255, 229, 93),
        title: const Text(
          "BBuild.si",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.symmetric(vertical: 25, horizontal: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Best Deals!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  DealsWidget(),
                  SizedBox(height: 10),
                  Text(
                    'Potongan Harga!',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  ItemDiskon(),
                  SizedBox(height: 10),
                  Text(
                    'Produk unggulan',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  WidgetBarangDB()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

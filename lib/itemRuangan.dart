// import 'dart:ffi';
// import 'package:bbuild/IsiDashboard/ItemWidget.dart';
import 'package:bbuild/widgets/itemGrid.dart';
// import 'package:project1/Keranjang/keranjang.dart';

// import 'userprofile.dart';

import 'package:flutter/material.dart';

class itemRuangan extends StatelessWidget {
  const itemRuangan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ruangan", style: TextStyle(color: Colors.black)),
        backgroundColor: const Color.fromARGB(255, 255, 229, 93),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
      ),
      body: ProductGrid(),
    );
  }
}

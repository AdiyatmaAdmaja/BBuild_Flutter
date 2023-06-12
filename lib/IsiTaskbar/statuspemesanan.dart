import 'package:flutter/material.dart';
import 'package:bbuild/IsiStatusPemesanan/kategoristatus.dart';
// import 'package:project1/userprofile.dart';

class StatusPemesanan extends StatefulWidget {
  const StatusPemesanan({super.key});

  @override
  State<StatusPemesanan> createState() => _StatusPemesananState();
}

class _StatusPemesananState extends State<StatusPemesanan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Status Pemesanan",
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
          const SizedBox(height: 10),
          const KategoriStatus(),
          Container(
            padding: const EdgeInsets.all(10),
            child: Container(
              height: 170,
              width: 100,
              decoration: BoxDecoration(
                  color: Colors.white, border: Border.all(color: Colors.black)),
              child: Column(
                children: [
                  Container(
                    height: 40,
                    width: double.infinity,
                    decoration: const BoxDecoration(
                      color: Color.fromARGB(255, 255, 229, 93),
                    ),
                    child: const ListTile(
                      title: Text(
                        'Tanggal',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                      trailing: Text(
                        'Status Barang',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, color: Colors.black),
                      ),
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      'Nama Barang',
                      style: TextStyle(
                          fontWeight: FontWeight.bold, color: Colors.black),
                    ),
                    subtitle: Text(
                      'Harga',
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}

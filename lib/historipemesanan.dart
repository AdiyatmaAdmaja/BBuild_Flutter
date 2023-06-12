import 'package:flutter/material.dart';

class HistoriPemesanan extends StatelessWidget {
  const HistoriPemesanan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 229, 93),
        title: const Text(
          'Histori Pemesanan',
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration: const BoxDecoration(color: Color.fromRGBO(217, 217, 217, 1)),
        child: ListView(
          children: [
            Container(
              height: 160,
              width: 100,
              decoration: const BoxDecoration(color: Colors.white),
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
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        'Berhasil/Batal',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      'Nama Barang',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Harga'),
                  ),
                  ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                        backgroundColor: const Color.fromARGB(255, 255, 229, 93),
                        side: BorderSide.none,
                        shape: const StadiumBorder()),
                    child: const Text(
                      "Cek Detail Pemesanan",
                      style: TextStyle(color: Colors.black),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

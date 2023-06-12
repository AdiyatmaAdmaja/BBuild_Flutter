import 'package:bbuild/Authentication/controller/alamat_controller.dart';
// import 'package:bbuild/models/alamat_model.dart';
import 'package:flutter/material.dart';
import 'package:bbuild/IsiTaskbar/alamatpengiriman.dart';
import 'package:get/get.dart';

class Alamat extends StatelessWidget {
  const Alamat({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(AlamatController());
    final _formKey = GlobalKey<FormState>();

    return Scaffold(
        appBar: AppBar(
          title: const Text("Alamat", style: TextStyle(color: Colors.black)),
          backgroundColor: const Color.fromARGB(255, 255, 229, 93),
          leading: IconButton(
            icon: const Icon(Icons.arrow_back_rounded),
            onPressed: () {
              Navigator.pop(context);
            },
            color: Colors.black,
          ),
        ),
        body: Container(
          height: double.infinity,
          width: double.infinity,
          decoration:
              const BoxDecoration(color: Color.fromRGBO(217, 217, 217, 1)),
          child: ListView(
            key: _formKey,
            children: [
              const SizedBox(height: 10),
              Container(
                  width: double.infinity,
                  padding: const EdgeInsets.all(10),
                  decoration: const BoxDecoration(color: Colors.white),
                  child: const Text(
                    'Alamat Pengiriman',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Colors.black,
                    ),
                  )),
              const SizedBox(height: 10),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                padding: const EdgeInsets.all(10),
                child: Form(
                  child: Column(
                    children: [
                      const Text(
                        'Data Penerima',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                      TextField(
                        controller: controller.namaAlamat,
                        decoration: const InputDecoration(
                          labelText: 'Nama Alamat',
                          hintText: 'Misal: Rumah, kantor, dll',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: controller.namaPenerima,
                        decoration: const InputDecoration(
                          labelText: 'Nama Penerima',
                          hintText: 'Masukkan Nama Penerima',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: controller.nomorHpPenerima,
                        decoration: const InputDecoration(
                          labelText: 'Nomor Telpon Penerima',
                          hintText: 'Masukkan Nomor Telpon Penerima',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                padding: const EdgeInsets.all(10),
                child: Form(
                  child: Column(
                    children: [
                      const Text(
                        'Alamat',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      TextField(
                        controller: controller.alamat,
                        decoration: const InputDecoration(
                          labelText: 'Alamat',
                          hintText: 'Masukkan Alamat',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: controller.provinsi,
                        decoration: const InputDecoration(
                          labelText: 'Provinsi',
                          hintText: 'Masukkan Provinsi',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: controller.kota,
                        decoration: const InputDecoration(
                          labelText: 'Kota/Kabupaten',
                          hintText: 'Masukkan Kota/Kabupaten',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: controller.kecamatan,
                        decoration: const InputDecoration(
                          labelText: 'Kecamatan',
                          hintText: 'Masukkan Kecamatan',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: controller.kelurahan,
                        decoration: const InputDecoration(
                          labelText: 'Kelurahan',
                          hintText: 'Masukkan Kelurahan',
                          border: OutlineInputBorder(),
                        ),
                      ),
                      const SizedBox(height: 10),
                      TextField(
                        controller: controller.kodePos,
                        decoration: const InputDecoration(
                          labelText: 'Kode Pos',
                          hintText: 'Masukkan Kode Pos',
                          border: OutlineInputBorder(),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 10),
              Container(
                decoration: const BoxDecoration(color: Colors.white),
                padding: const EdgeInsets.all(10),
                child: ElevatedButton(
                  onPressed: () {
                    showDialog(
                      context: context,
                      builder: (context) {
                        return AlertDialog(
                          title: const Text('PERHATIAN'),
                          content: const Text(
                              'Apakah Data yang anda masukkan sudah benar?'),
                          actions: [
                            ElevatedButton(
                              onPressed: () {
                                Navigator.of(context).push(MaterialPageRoute(
                                    builder: (context) =>
                                        const AlamatPengiriman()));
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 229, 93),
                              ),
                              child: const Text(
                                'Ya',
                                style: TextStyle(color: Colors.black),
                              ),
                            ),
                            ElevatedButton(
                              onPressed: () {
                                Navigator.pop(context);
                              },
                              style: ElevatedButton.styleFrom(
                                backgroundColor:
                                    const Color.fromARGB(255, 255, 229, 93),
                              ),
                              child: const Text('Belum',
                                  style: TextStyle(color: Colors.black)),
                            )
                          ],
                        );
                      },
                    );
                  },
                  style: ElevatedButton.styleFrom(
                      backgroundColor: const Color.fromARGB(255, 255, 229, 93),
                      side: BorderSide.none,
                      shape: const StadiumBorder()),
                  child: const Text(
                    "Save",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              )
            ],
          ),
        ));
  }
}

import 'package:flutter/material.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
import 'package:bbuild/IsiTaskbar/alamat.dart';
// import 'package:project1/userprofile.dart';

class AlamatPengiriman extends StatelessWidget {
  const AlamatPengiriman({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color.fromARGB(255, 255, 229, 93),
        title: const Text(
          'Alamat Pengiriman',
          style: TextStyle(color: Colors.black),
        ),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
        actions: [
          IconButton(
            onPressed: () {
              Navigator.push(context,
                  MaterialPageRoute(builder: (context) => const Alamat()));
            },
            icon: const Icon(
              LineAwesomeIcons.plus_circle,
              color: Colors.black,
            ),
          )
        ],
      ),
      body: Container(
        height: double.infinity,
        width: double.infinity,
        padding: const EdgeInsets.all(10),
        decoration:
            const BoxDecoration(color: Color.fromRGBO(217, 217, 217, 1)),
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
                        'Rumah',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      trailing: Text(
                        'Utama',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  const ListTile(
                    title: Text(
                      'Nama Penerima',
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                    subtitle: Text('Alamat\nNomer Telpon'),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 255, 229, 93),
                            side: BorderSide.none,
                            shape: const StadiumBorder()),
                        child: const Text(
                          "Jadikan Utama",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {},
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 255, 229, 93),
                            side: BorderSide.none,
                            shape: const StadiumBorder()),
                        child: const Text(
                          "Ubah",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Container(
                                child: AlertDialog(
                                  title: const Text('PERHATIAN'),
                                  content: const Text(
                                      'Apakah anda yakin ingin menghapus alamat?'),
                                  actions: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.of(context).push(
                                            MaterialPageRoute(
                                                builder: (context) =>
                                                    const AlamatPengiriman()));
                                      },
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor: const Color.fromARGB(
                                            255, 255, 229, 93),
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
                                        backgroundColor: const Color.fromARGB(
                                            255, 255, 229, 93),
                                      ),
                                      child: const Text('Tidak',
                                          style:
                                              TextStyle(color: Colors.black)),
                                    )
                                  ],
                                ),
                              );
                            },
                          );
                        },
                        style: ElevatedButton.styleFrom(
                            backgroundColor:
                                const Color.fromARGB(255, 255, 229, 93),
                            side: BorderSide.none,
                            shape: const StadiumBorder()),
                        child: const Text(
                          "Hapus",
                          style: TextStyle(color: Colors.black),
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
    );
  }
}

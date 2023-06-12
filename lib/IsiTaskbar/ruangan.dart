import 'package:flutter/material.dart';
// import 'package:project1/dashboard.dart';

import '../itemRuangan.dart';

class Ruangan extends StatelessWidget {
  const Ruangan({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: const Color.fromARGB(255, 255, 229, 93),
          title: const Text(
            'Kategori Ruangan',
            style: TextStyle(color: Colors.black),
          ),
        ),
        body: ListView(
          children: [
            InkWell(
              child: Container(
                height: 150,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/kamartidur.png"),
                        fit: BoxFit.cover)),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                      color: const Color.fromARGB(255, 255, 229, 93),
                      borderRadius: BorderRadius.circular(10),
                      border: Border.all(
                        color: Colors.black,
                        width: 2,
                      ),
                    ),
                    child: const Text(
                      'Kamar Tidur',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const itemRuangan(),
                  ),
                );
              },
            ),
            InkWell(
              child: Container(
                height: 150,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/ruangtamu.png"),
                        fit: BoxFit.cover)),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 229, 93),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        )),
                    child: const Text(
                      'Ruang Tamu',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const itemRuangan(),
                  ),
                );
              },
            ),
            InkWell(
              child: Container(
                height: 150,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/dapur.png"),
                        fit: BoxFit.cover)),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 229, 93),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        )),
                    child: const Text(
                      'Dapur',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const itemRuangan(),
                  ),
                );
              },
            ),
            InkWell(
              child: Container(
                height: 150,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/ruangmakan.png"),
                        fit: BoxFit.cover)),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 229, 93),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        )),
                    child: const Text(
                      'Ruang Makan',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const itemRuangan(),
                  ),
                );
              },
            ),
            InkWell(
              child: Container(
                height: 150,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/ruangkerja.png"),
                        fit: BoxFit.cover)),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 229, 93),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        )),
                    child: const Text(
                      'Ruang Kerja',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const itemRuangan(),
                  ),
                );
              },
            ),
            InkWell(
              child: Container(
                height: 150,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("images/kamarmandi.png"),
                        fit: BoxFit.cover)),
                child: Center(
                  child: Container(
                    padding: const EdgeInsets.all(5),
                    decoration: BoxDecoration(
                        color: const Color.fromARGB(255, 255, 229, 93),
                        borderRadius: BorderRadius.circular(10),
                        border: Border.all(
                          color: Colors.black,
                          width: 2,
                        )),
                    child: const Text(
                      'Kamar Mandi',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Colors.black,
                      ),
                    ),
                  ),
                ),
              ),
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const itemRuangan(),
                  ),
                );
              },
            ),
          ],
        ));
  }
}

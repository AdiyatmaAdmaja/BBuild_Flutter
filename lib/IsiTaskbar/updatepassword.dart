import 'package:flutter/material.dart';
// import 'package:project1/main.dart';
// import '../userprofile.dart';

class UpdatePassword extends StatelessWidget {
  const UpdatePassword({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Ubah Password", style: TextStyle(color: Colors.black)),
        backgroundColor: const Color.fromARGB(255, 255, 229, 93),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
          color: Colors.black,
        ),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: Column(
            children: [
              Form(
                child: Column(
                  children: [
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Password Lama',
                        hintText: 'Masukkan Password Lama',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Password Baru',
                        hintText: 'Masukkan Password Baru',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 16.0,
                    ),
                    const TextField(
                      decoration: InputDecoration(
                        labelText: 'Konfirmasi Password Baru',
                        hintText: 'Masukkan Password Baru',
                        border: OutlineInputBorder(),
                      ),
                    ),
                    const SizedBox(
                      height: 25.0,
                    ),
                    SizedBox(
                      width: 100,
                      child: ElevatedButton(
                        onPressed: () {
                          showDialog(
                            context: context,
                            builder: (context) {
                              return Container(
                                child: AlertDialog(
                                  title: const Text('PERHATIAN'),
                                  content: const Text(
                                      'Apakah Anda yakin ingin mengganti password?'),
                                  actions: [
                                    ElevatedButton(
                                      onPressed: () {
                                        Navigator.pop(context);
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
                            backgroundColor: const Color.fromARGB(255, 255, 229, 93),
                            side: BorderSide.none,
                            shape: const StadiumBorder()),
                        child: const Text(
                          "Save",
                          style: TextStyle(color: Colors.black),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

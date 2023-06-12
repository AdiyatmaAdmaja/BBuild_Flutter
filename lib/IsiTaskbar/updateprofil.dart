import 'package:bbuild/Authentication/controller/profile_controller.dart';
import 'package:bbuild/models/user_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
// import '../userprofile.dart';

class UpdateProfil extends StatelessWidget {
  const UpdateProfil({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    return Scaffold(
      appBar: AppBar(
        title:
            const Text("Edit Profile", style: TextStyle(color: Colors.black)),
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
          child: FutureBuilder(
            future: controller.getUserData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  UserModel user = snapshot.data as UserModel;

                  final nama = TextEditingController(text: user.nama);
                  final email = TextEditingController(text: user.email);
                  final nomorHp = TextEditingController(text: user.nomorHp);

                  return Column(
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            width: 120,
                            height: 120,
                            child: ClipRRect(
                                borderRadius: BorderRadius.circular(100),
                                child: const Image(
                                    fit: BoxFit.cover,
                                    image: AssetImage("images/Kucing.png"))),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            child: Container(
                              width: 35,
                              height: 35,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(100),
                                  color:
                                      const Color.fromARGB(255, 255, 229, 93)),
                              child: const Icon(
                                LineAwesomeIcons.camera,
                                color: Colors.black,
                                size: 20,
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 50),
                      Form(
                        child: Column(
                          children: [
                            TextFormField(
                              controller: nama,
                              decoration: const InputDecoration(
                                labelText: 'Nama',
                                hintText: 'Masukkan nama',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            TextFormField(
                              controller: email,
                              decoration: const InputDecoration(
                                labelText: 'E-mail',
                                hintText: 'Masukkan E-Mail',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(
                              height: 16.0,
                            ),
                            TextFormField(
                              controller: nomorHp,
                              decoration: const InputDecoration(
                                labelText: 'No.Telpon',
                                hintText: 'Masukkan No.Telpon',
                                border: OutlineInputBorder(),
                              ),
                            ),
                            const SizedBox(
                              height: 16.0,
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
                                      return AlertDialog(
                                        title: const Text('PERHATIAN'),
                                        content: const Text(
                                            'Apakah Anda yakin ingin menyimpan perubahan?'),
                                        actions: [
                                          ElevatedButton(
                                            onPressed: () async {
                                              final userData = UserModel(
                                                nama: nama.text.trim(),
                                                email: email.text.trim(),
                                                nomorHp: nomorHp.text.trim(),
                                                password: user.password,
                                              );

                                              await controller
                                                  .updateRecord(userData);
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 255, 229, 93),
                                            ),
                                            child: const Text(
                                              'Ya',
                                              style: TextStyle(
                                                  color: Colors.black),
                                            ),
                                          ),
                                          ElevatedButton(
                                            onPressed: () {
                                              Navigator.pop(context);
                                            },
                                            style: ElevatedButton.styleFrom(
                                              backgroundColor:
                                                  const Color.fromARGB(
                                                      255, 255, 229, 93),
                                            ),
                                            child: const Text('Tidak',
                                                style: TextStyle(
                                                    color: Colors.black)),
                                          )
                                        ],
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
                                  "Save",
                                  style: TextStyle(color: Colors.black),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  );
                } else if (snapshot.hasError) {
                  return Center(child: Text(snapshot.error.toString()));
                } else {
                  return const Center(child: Text("Something went wrong"));
                }
              } else {
                return const Center(child: CircularProgressIndicator());
              }
            },
          ),
        ),
      ),
    );
  }
}

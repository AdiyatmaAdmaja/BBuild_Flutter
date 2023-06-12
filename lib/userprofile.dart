// import 'package:bbuild/models/user_model.dart';
import 'package:firebase_auth/firebase_auth.dart';
// import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:project1/dashboard.dart';
import 'package:line_awesome_flutter/line_awesome_flutter.dart';
// import 'package:project1/main.dart';
import 'Authentication/controller/profile_controller.dart';
import 'IsiTaskbar/updateprofil.dart';
// import 'IsiTaskbar/updatepassword.dart';
import 'IsiTaskbar/pusatlayanan.dart';
import 'IsiTaskbar/alamatpengiriman.dart';
import 'IsiTaskbar/statuspemesanan.dart';
import 'models/user_model.dart';
// import 'login.dart';

class UserProfile extends StatelessWidget {
  static Future<String> logOut() async {
    String message;
    try {
      await FirebaseAuth.instance.signOut();
      message = "Success";
    } on FirebaseAuthException catch (e) {
      message = e.message!;
    }
    return message;
  }

  static User? getAuthUser() {
    User? user;
    try {
      if (FirebaseAuth.instance.currentUser != null) {
        user = FirebaseAuth.instance.currentUser;
      }
    } on FirebaseAuthException catch (e) {
      e.code;
    }
    return user;
  }

  final user = FirebaseAuth.instance.currentUser!;

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ProfileController());
    var isDark = MediaQuery.of(context).platformBrightness == Brightness.dark;
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Akun Pengguna',
          style: TextStyle(color: Colors.black),
        ),
        backgroundColor: const Color.fromARGB(255, 255, 229, 93),
        actions: [
          IconButton(
            onPressed: () {},
            icon: Icon(
              isDark ? LineAwesomeIcons.sun : LineAwesomeIcons.moon,
              color: Colors.black,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15.0),
          child: FutureBuilder(
            future: controller.getUserData(),
            builder: (context, snapshot) {
              if (snapshot.connectionState == ConnectionState.done) {
                if (snapshot.hasData) {
                  UserModel userData = snapshot.data as UserModel;
                  return Column(
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
                      const SizedBox(height: 10),
                      Text(
                        userData.nama!,
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        userData.email!,
                        style: const TextStyle(fontSize: 15),
                      ),
                      const SizedBox(height: 15),
                      SizedBox(
                        width: 200,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.of(context).push(MaterialPageRoute(
                                builder: (context) => const UpdateProfil()));
                          },
                          style: ElevatedButton.styleFrom(
                              backgroundColor:
                                  const Color.fromARGB(255, 255, 229, 93),
                              side: BorderSide.none,
                              shape: const StadiumBorder()),
                          child: const Text("Edit Profile",
                              style: TextStyle(color: Colors.black)),
                        ),
                      ),
                      const SizedBox(height: 5),
                      const Divider(),
                      const SizedBox(height: 5),

                      //Menu
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const AlamatPengiriman()));
                        },
                        title: const Text(
                          "Alamat Pengiriman",
                          style: TextStyle(fontSize: 15),
                        ),
                        trailing: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.grey.withOpacity(0.1),
                            ),
                            child: const Icon(LineAwesomeIcons.angle_right,
                                size: 18, color: Colors.grey)),
                      ),
                      // ListTile(
                      //   onTap: () {
                      //     Navigator.of(context).push(MaterialPageRoute(
                      //         builder: (context) => const UpdatePassword()));
                      //   },
                      //   title: const Text(
                      //     "Ganti Password",
                      //     style: TextStyle(fontSize: 15),
                      //   ),
                      //   trailing: Container(
                      //       width: 30,
                      //       height: 30,
                      //       decoration: BoxDecoration(
                      //         borderRadius: BorderRadius.circular(100),
                      //         color: Colors.grey.withOpacity(0.1),
                      //       ),
                      //       child: const Icon(LineAwesomeIcons.angle_right,
                      //           size: 18, color: Colors.grey)),
                      // ),
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const StatusPemesanan()));
                        },
                        title: const Text(
                          "Status Pemesanan",
                          style: TextStyle(fontSize: 15),
                        ),
                        trailing: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.grey.withOpacity(0.1),
                            ),
                            child: const Icon(LineAwesomeIcons.angle_right,
                                size: 18, color: Colors.grey)),
                      ),
                      const Divider(color: Colors.grey),
                      const SizedBox(height: 10),
                      ListTile(
                        onTap: () {
                          Navigator.of(context).push(MaterialPageRoute(
                              builder: (context) => const PusatLayanan()));
                        },
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.blueAccent.withOpacity(0.1)),
                          child: const Icon(LineAwesomeIcons.phone_volume,
                              color: Colors.blueAccent),
                        ),
                        title: const Text(
                          "Pusat Layanan",
                          style: TextStyle(fontSize: 15),
                        ),
                        trailing: Container(
                            width: 30,
                            height: 30,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.grey.withOpacity(0.1),
                            ),
                            child: const Icon(LineAwesomeIcons.angle_right,
                                size: 18, color: Colors.grey)),
                      ),
                      ListTile(
                        onTap: logOut,
                        leading: Container(
                          width: 40,
                          height: 40,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(100),
                              color: Colors.blueAccent.withOpacity(0.1)),
                          child: const Icon(LineAwesomeIcons.alternate_sign_out,
                              color: Colors.blueAccent),
                        ),
                        title: const Text(
                          "Logout",
                          style: TextStyle(fontSize: 15, color: Colors.red),
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

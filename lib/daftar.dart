// import 'dart:html';
import 'package:bbuild/Authentication/controller/signup_controller.dart';
import 'package:bbuild/models/user_model.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:provider/provider.dart';
// import 'Authentication/auth.dart';
// import 'package:flutter_login/flutter_login.dart';
// import 'main.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'dashboard.dart';
// import 'package:firebase_auth/firebase_auth.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  _RegisterPageState createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  final controller = Get.put(SignUpController());
  final _formKey = GlobalKey<FormState>();

  @override
  // void dispose() {
  //   _namaController.dispose();
  //   _emailController.dispose();
  //   _noHpController.dispose();
  //   _alamatController.dispose();
  //   _passwordController.dispose();
  //   _konfirmasiPasswordController.dispose();
  //   super.dispose();
  // }

  // Future signUp() async {
  //   if (passwordConfirmed()) {
  //     await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //       email: _emailController.text.trim(),
  //       password: _passwordController.text.trim(),
  //     );

  //     addUserDetail(
  //       _namaController.text.trim(),
  //       _emailController.text.trim(),
  //       _noHpController.text.trim(),
  //       _alamatController.text.trim(),
  //     );
  //   }
  // }

  // Future addUserDetail(
  //     String nama, String email, String nomerTelpon, String alamat) async {
  //   await FirebaseFirestore.instance.collection("users").add({
  //     "Nama": nama,
  //     "Email": email,
  //     "nomerTelpon": nomerTelpon,
  //     "Alamat": alamat,
  //   });
  // }

  // bool passwordConfirmed() {
  //   if (_passwordController.text.trim() ==
  //       _konfirmasiPasswordController.text.trim()) {
  //     return true;
  //   } else {
  //     return false;
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Daftar', style: TextStyle(color: Colors.black)),
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
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextFormField(
                controller: controller.nama,
                decoration: const InputDecoration(
                  labelText: 'Nama',
                  hintText: 'Masukkan nama',
                ),
              ),
              TextFormField(
                controller: controller.email,
                decoration: const InputDecoration(
                  labelText: 'Email',
                  hintText: 'Masukkan email',
                ),
              ),
              TextFormField(
                controller: controller.nomorHp,
                decoration: const InputDecoration(
                  labelText: 'No.Telpon',
                  hintText: 'Masukkan No.Telpon',
                ),
              ),
              TextFormField(
                controller: controller.password,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Password',
                  hintText: 'Masukkan password',
                ),
              ),
              TextFormField(
                controller: controller.konfirmasiPassword,
                obscureText: true,
                decoration: const InputDecoration(
                  labelText: 'Konfirmasi Password',
                  hintText: 'Masukkan kembali password',
                ),
              ),
              const SizedBox(
                height: 16.0,
              ),
              Center(
                child: GestureDetector(
                  onTap: () {
                    if (_formKey.currentState!.validate()) {
                      // SignUpController.instance.registerUser(
                      //     controller.email.text.trim(),
                      //     controller.password.text.trim());

                      final user = UserModel(
                        nama: controller.nama.text.trim(),
                        email: controller.email.text.trim(),
                        nomorHp: controller.nomorHp.text.trim(),
                        // alamat: controller.alamat.text.trim(),
                        password: controller.password.text.trim(),
                      );
                      SignUpController.instance.createUser(user);
                    }
                  },
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(12),
                      color: const Color.fromARGB(255, 255, 229, 93),
                    ),
                    child: const Center(
                      child: Text(
                        "Daftar",
                        style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 18),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 16),
              TextButton(
                child: const Text('Login disini'),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

// class RegisterPage extends StatefulWidget {
//   const RegisterPage({super.key});

//   @override
//   State<RegisterPage> createState() => _RegisterPageState();
// }

// class _RegisterPageState extends State<RegisterPage> {
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();
//   final _confirmPasswordController = TextEditingController();

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   Future signUp() async {
//     if (passwordConfirmed()) {
//       await FirebaseAuth.instance.createUserWithEmailAndPassword(
//         email: _emailController.text.trim(),
//         password: _passwordController.text.trim(),
//       );
//     }
//   }

//   bool passwordConfirmed() {
//     if (_passwordController.text.trim() ==
//         _confirmPasswordController.text.trim()) {
//       return true;
//     } else {
//       return false;
//     }
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: const Text('Daftar', style: TextStyle(color: Colors.black)),
//         backgroundColor: const Color.fromARGB(255, 255, 229, 93),
//       ),
//       body: Padding(
//         padding: const EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             const SizedBox(
//               height: 16.0,
//             ),
//             TextField(
//               controller: _emailController,
//               decoration: const InputDecoration(
//                 labelText: 'Email',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             const SizedBox(
//               height: 16.0,
//             ),
//             TextField(
//               controller: _passwordController,
//               decoration: const InputDecoration(
//                 labelText: 'Password',
//                 border: OutlineInputBorder(),
//               ),
//               obscureText: true,
//             ),
//             const SizedBox(
//               height: 16.0,
//             ),
//             TextField(
//               controller: _confirmPasswordController,
//               decoration: const InputDecoration(
//                 labelText: 'confirm Password',
//                 border: OutlineInputBorder(),
//               ),
//               obscureText: true,
//             ),
//             const SizedBox(
//               height: 16.0,
//             ),
//             Center(
//               child: GestureDetector(
//                 onTap: signUp,
//                 child: Container(
//                   padding: const EdgeInsets.all(20),
//                   decoration: BoxDecoration(
//                     borderRadius: BorderRadius.circular(12),
//                     color: const Color.fromARGB(255, 255, 229, 93),
//                   ),
//                   child: const Center(
//                     child: Text(
//                       "Daftar",
//                       style: TextStyle(
//                           color: Colors.black,
//                           fontWeight: FontWeight.bold,
//                           fontSize: 18),
//                     ),
//                   ),
//                 ),
//               ),
//             ),
//             const SizedBox(height: 16),
//             TextButton(
//               child: const Text('Login disini'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => const LoginPage()),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

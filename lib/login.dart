import 'package:bbuild/Authentication/controller/login_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'main.dart';
import 'daftar.dart';
// import 'dashboard.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final controller = Get.put(LoginController());
  final _formKey = GlobalKey<FormState>();

  // Future signIn() async {
  //   await FirebaseAuth.instance.signInWithEmailAndPassword(
  //     email: _emailController.text.trim(),
  //     password: _passwordController.text.trim(),
  //   );
  // }

  @override
  // void dispose() {
  //   _emailController.dispose();
  //   _passwordController.dispose();
  //   super.dispose();
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login', style: TextStyle(color: Colors.black)),
        backgroundColor: const Color.fromARGB(255, 255, 229, 93),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          key: _formKey,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            const SizedBox(
              height: 16.0,
            ),
            TextField(
              controller: controller.email,
              decoration: const InputDecoration(
                labelText: 'Email',
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(
              height: 16.0,
            ),
            TextField(
              controller: controller.password,
              decoration: const InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(),
              ),
              obscureText: true,
            ),
            const SizedBox(
              height: 16.0,
            ),
            Center(
              child: GestureDetector(
                onTap: () {
                  LoginController.instance.userLogin(
                      controller.email.text.trim(),
                      controller.password.text.trim());
                },
                child: Container(
                  padding: const EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: const Color.fromARGB(255, 255, 229, 93),
                  ),
                  child: const Center(
                    child: Text(
                      "Masuk",
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
              child: const Text('Daftar disini'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RegisterPage()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}

// class LoginPage extends StatelessWidget {
//   @override
//   Widget build(BuildContext context) {
//     return MaterialApp(debugShowCheckedModeBanner: false, home: login());
//   }
// }

// class login extends StatefulWidget {
//   @override
//   _LoginPageState createState() => _LoginPageState();
// }

// class _LoginPageState extends State<login> {
//   final _emailController = TextEditingController();
//   final _passwordController = TextEditingController();

//   @override
//   void dispose() {
//     _emailController.dispose();
//     _passwordController.dispose();
//     super.dispose();
//   }

//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       appBar: AppBar(
//         title: Text('Login', style: TextStyle(color: Colors.black)),
//         backgroundColor: Color.fromARGB(255, 255, 229, 93),
//       ),
//       body: Padding(
//         padding: EdgeInsets.all(16.0),
//         child: Column(
//           crossAxisAlignment: CrossAxisAlignment.start,
//           children: <Widget>[
//             SizedBox(
//               height: 16.0,
//             ),
//             TextField(
//               controller: _emailController,
//               decoration: InputDecoration(
//                 labelText: 'Email',
//                 border: OutlineInputBorder(),
//               ),
//             ),
//             SizedBox(
//               height: 16.0,
//             ),
//             TextField(
//               controller: _passwordController,
//               decoration: InputDecoration(
//                 labelText: 'Password',
//                 border: OutlineInputBorder(),
//               ),
//               obscureText: true,
//             ),
//             SizedBox(
//               height: 16.0,
//             ),
//             Center(
//               child: ElevatedButton(
//                 style: ElevatedButton.styleFrom(
//                   backgroundColor: Color.fromARGB(255, 255, 229, 93),
//                 ),
//                 child: Text('MASUK', style: TextStyle(color: Colors.black)),
//                 onPressed: () {
//                   String email = _emailController.text.trim();
//                   String password = _passwordController.text.trim();
//                   Navigator.push(
//                     context,
//                     MaterialPageRoute(builder: (context) => home()),
//                   );
//                 },
//               ),
//             ),
//             SizedBox(height: 16),
//             TextButton(
//               child: Text('Daftar disini'),
//               onPressed: () {
//                 Navigator.push(
//                   context,
//                   MaterialPageRoute(builder: (context) => DaftarPage()),
//                 );
//               },
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:bbuild/login.dart';

import '../userprofile.dart';
// import 'auth_page.dart';

class userORlogin extends StatelessWidget {
  const userORlogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: StreamBuilder<User?>(
        stream: FirebaseAuth.instance.authStateChanges(),
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return UserProfile();
          } else {
            return const LoginPage();
          }
        },
      ),
    );
  }
}

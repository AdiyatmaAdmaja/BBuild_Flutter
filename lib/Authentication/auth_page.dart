import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:bbuild/login.dart';

import '../daftar.dart';

class AuthPage extends StatefulWidget {
  const AuthPage({super.key});

  @override
  State<AuthPage> createState() => _AuthPageState();
}

class _AuthPageState extends State<AuthPage> {
  bool showLoginPage = true;

  void toggleScreens() {
    showLoginPage = !showLoginPage;
  }

  @override
  Widget build(BuildContext context) {
    if (showLoginPage) {
      return const LoginPage();
      // return LoginPage(showRegisterPage: toggleScreens);
    } else {
      return const RegisterPage();
      // return RegisterPage(showLoginPage: toggleScreens);
    }
  }
}

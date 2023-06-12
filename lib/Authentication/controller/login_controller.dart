import '../repository/Authentication_repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  static LoginController get instance => Get.find();

  final email = TextEditingController();
  final password = TextEditingController();

  void userLogin(String email, String password) {
    AuthenticationRepository.instance
        .loginUserWithEmailAndPassword(email, password);
  }
}

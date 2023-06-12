import 'package:bbuild/Authentication/repository/User_repository/user_repository.dart';
import 'package:bbuild/models/user_model.dart';
// import '../../forget_password/forget_password_otp/otp_screen.dart';
import '../repository/Authentication_repository/auth_repository.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SignUpController extends GetxController {
  static SignUpController get instance => Get.find();

  final nama = TextEditingController();
  final email = TextEditingController();
  final nomorHp = TextEditingController();
  final alamat = TextEditingController();
  final password = TextEditingController();
  final konfirmasiPassword = TextEditingController();

  final userRepo = Get.put(UserRepository());

  void registerUser(String email, String password) {
    AuthenticationRepository.instance
        .createUserWithEmailAndPassword(email, password);
  }

  Future<void> createUser(UserModel user) async {
    await userRepo.createUser(user);
    registerUser(user.email.toString(), user.password.toString());
  }

  void phoneAuthentication(String nomorHp) {
    AuthenticationRepository.instance.phoneAuthentication(nomorHp);
  }
}

// import 'package:flutter/foundation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class UserModel {
  final String? id;
  final String? nama;
  final String? email;
  final String? nomorHp;
  final String? password;

  const UserModel({
    this.id,
    required this.nama,
    required this.email,
    required this.nomorHp,
    required this.password,
  });

  toJson() {
    return {
      "Nama": nama,
      "Email": email,
      "Phone": nomorHp,
      "Password": password,
    };
  }

  factory UserModel.fromSnapShot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return UserModel(
      id: document.id,
      nama: data["Nama"],
      email: data["Email"],
      nomorHp: data["NomorHp"],
      password: data["Password"],
    );
  }
}

import 'package:flutter/material.dart';
import 'package:get/get.dart';
// import 'package:bbuild/Authentication/repository/User_repository/alamat_repository.dart';
// import 'package:bbuild/models/alamat_model.dart';

class AlamatController extends GetxController {
  static AlamatController get instance => Get.find();

  final namaAlamat = TextEditingController();
  final namaPenerima = TextEditingController();
  final nomorHpPenerima = TextEditingController();
  final alamat = TextEditingController();
  final provinsi = TextEditingController();
  final kota = TextEditingController();
  final kecamatan = TextEditingController();
  final kelurahan = TextEditingController();
  final kodePos = TextEditingController();
}

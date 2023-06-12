import 'package:bbuild/models/alamat_model.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AlamatRepository extends GetxController {
  static AlamatRepository get instance => Get.find();

  final _db = FirebaseFirestore.instance;

  createAlamat(AlamatModel address) async {
    await _db.collection("Alamat").add(address.toJson()).whenComplete(() {
      Get.snackbar(
        "Success",
        "Alamat telah ditambahkan.",
        snackPosition: SnackPosition.BOTTOM,
        backgroundColor: Colors.green.withOpacity(0.1),
        colorText: Colors.green,
      );
    }).catchError((error, stackTrace) {
      Get.snackbar("Error", "Something went wrong. Try Again",
          snackPosition: SnackPosition.BOTTOM,
          backgroundColor: Colors.redAccent.withOpacity(0.1),
          colorText: Colors.red);
      return (error);
    });
  }

  Future<AlamatModel> getAlamatDetails(String address) async {
    final snapshot = await _db
        .collection("Alamat")
        .where("Nama Alamat", isEqualTo: address)
        .get();
    final alamatData =
        snapshot.docs.map((e) => AlamatModel.fromSnapShot(e)).single;
    return alamatData;
  }

  Future<List<AlamatModel>> allAlamat() async {
    final snapshot = await _db.collection("Alamat").get();
    final alamatData =
        snapshot.docs.map((e) => AlamatModel.fromSnapShot(e)).toList();
    return alamatData;
  }
}

import 'package:cloud_firestore/cloud_firestore.dart';

class AlamatModel {
  final String? id;
  final String? namaAlamat;
  final String? namaPenerima;
  final String? nomorHpPenerima;
  final String? alamat;
  final String? provinsi;
  final String? kota;
  final String? kecamatan;
  final String? kelurahan;
  final String? kodePos;

  const AlamatModel(
      {this.id,
      required this.namaAlamat,
      required this.namaPenerima,
      required this.nomorHpPenerima,
      required this.alamat,
      required this.provinsi,
      required this.kota,
      required this.kecamatan,
      required this.kelurahan,
      required this.kodePos});

  toJson() {
    return {
      "NamaAlamat": namaAlamat,
      "Nama": namaPenerima,
      "Phone": nomorHpPenerima,
      "Alamat": alamat,
      "Provinsi": provinsi,
      "Kota": kota,
      "Kecamatan": kecamatan,
      "Kelurahan": kelurahan,
      "KodePos": kodePos,
    };
  }

  factory AlamatModel.fromSnapShot(
      DocumentSnapshot<Map<String, dynamic>> document) {
    final data = document.data()!;
    return AlamatModel(
      id: document.id,
      namaAlamat: data["NamaAlamat"],
      namaPenerima: data["NamaPenerima"],
      nomorHpPenerima: data["NomorHpPenerima"],
      alamat: data["Alamat"],
      provinsi: data["Provinsi"],
      kota: data["Kota"],
      kecamatan: data["Kecamatan"],
      kelurahan: data["Kelurahan"],
      kodePos: data["KodePos"],
    );
  }
}

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Auth with ChangeNotifier {
  void signup(
      String nama, String email, String noTelpon, String password) async {
    Uri url = Uri.parse(
        "https://identitytoolkit.googleapis.com/v1/accounts:signUp?key=AIzaSyCS8uGnvh9devolxGi8jSNridCsgs0U5TA");

    var response = await http.post(
      url,
      body: json.encode({
        "nama": nama,
        "email": email,
        "noTelpon": noTelpon,
        "password": password,
        "returnSecureToken": true
      }),
    );

    print(json.decode(response.body));
  }

  void login(String email, String password) async {
    Uri url = Uri.parse(
        "https://identitytoolkit.googleapis.com/v1/accounts:signInWithPassword?key=AIzaSyCS8uGnvh9devolxGi8jSNridCsgs0U5TA");

    var response = await http.post(
      url,
      body: json.encode({
        "email": email,
        "password": password,
        "returnSecureToken": true,
      }),
    );

    print(json.decode(response.body));
  }

  static getAuthUser() {}
}

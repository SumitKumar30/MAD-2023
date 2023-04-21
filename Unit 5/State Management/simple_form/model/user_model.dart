import 'package:flutter/material.dart';

class UserModel extends ChangeNotifier {
  String name = '';
  String email = '';
  String password = '';

  void setName(String name) {
    this.name = name;
    notifyListeners();
  }

  void setEmail(String email) {
    this.email = email;
    notifyListeners();
  }

  void setPassword(String password) {
    this.password = password;
    notifyListeners();
  }
}
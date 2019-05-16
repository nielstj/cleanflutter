import 'package:flutter/material.dart';
import 'package:cleanapp/models/user.dart';

class UserProvider with ChangeNotifier {
  User _user = User();

  User get user => _user;

  set user(User newUser) {
    _user = newUser;
    notifyListeners();
  }
}

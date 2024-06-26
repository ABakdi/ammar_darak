import 'package:flutter/material.dart';
import 'package:ammar_darak/models/user.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(
    id: 0,
    email: '',
    name: '',
    role: '',
    username: '',
    confirmed: false,
    createdAt: '',
    updatedAt: '',
    token: '',
  );

  User get user => _user;

  void setUser(String user) {
    _user = User.fromJson(user);
    notifyListeners();
  }

  void setUserFromModel(User user) {
    _user = user;
    notifyListeners();
  }
}

import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool isLogin = false;
  AuthProvider({this.isLogin = false});

  increment() {
    isLogin = !isLogin;
    notifyListeners();
  }
}
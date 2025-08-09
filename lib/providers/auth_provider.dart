
// providers/auth_provider.dart

import 'package:flutter/material.dart';

class AuthProvider extends ChangeNotifier {
  bool _isLoggedIn = false;

  bool get isLoggedIn => _isLoggedIn;

  Future<void> login(String email, String password) async {
    if (email == 'admin@example.com' && password == 'admin123') {
      _isLoggedIn = true;
      notifyListeners();
    }
  }

  void logout() {
    _isLoggedIn = false;
    notifyListeners();
  }
}
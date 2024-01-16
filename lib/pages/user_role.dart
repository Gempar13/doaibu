import 'package:flutter/foundation.dart';

class UserRole with ChangeNotifier {
  String _role = '';

  String get role => _role;

  void setRole(String newRole) {
    _role = newRole;
    notifyListeners();
  }
}

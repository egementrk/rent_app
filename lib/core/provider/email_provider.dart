import 'package:flutter/material.dart';

class EmailProvider with ChangeNotifier {
  String? _providerEmail = "";

  String? get getEmail {
    return _providerEmail;
  }

  void setProviderEmail(String _email) {
    _providerEmail = _email;
    notifyListeners();
  }
}

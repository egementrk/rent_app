import 'package:flutter/material.dart';

class UserInfoProvider with ChangeNotifier {
  String? _fullName, _profilePicture, _location, _type, _provider;

  String? get userName {
    return _fullName;
  }

  String? get profilePicture {
    return _profilePicture;
  }

  void setUserName(String _fullName) {
    this._fullName = _fullName;
    notifyListeners();
  }
}

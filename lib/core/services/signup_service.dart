import 'dart:convert';

import 'package:altogic_orange/core/services/keys.dart';
import 'package:http/http.dart' as http;

Future<String> signupUser(String _email, _password, _fullName) async {
  final response = await http.post(
    Uri.parse(ApiConstants.baseUrl + ApiConstants.userSignUpEndpoint),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email': _email,
      'name': _fullName,
      'password': _password,
    }),
  );
  if (response.statusCode == 200) {
    return '200';
  } else
    throw Exception('Failed');
}

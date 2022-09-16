import 'dart:convert';
import 'package:altogic_orange/core/services/keys.dart';
import 'package:http/http.dart' as http;

Future<String> loginUser(String _email, _password) async {
  final response = await http.post(
    Uri.parse(ApiConstants.baseUrl + ApiConstants.userLoginEndpoint),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email': _email,
      'password': _password,
    }),
  );
  if (response.statusCode == 200) {
    //TODO: User Info Get
    return '200';
  } else
    throw Exception('Failed');
}

import 'dart:convert';
import 'package:altogic_orange/core/services/keys.dart';
import 'package:http/http.dart' as http;

Future<String> verificationEmailSend(String _email) async {
  final response = await http.post(
    Uri.parse(ApiConstants.baseUrl + ApiConstants.forgotPasswordMail),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'email': _email,
    }),
  );
  if (response.statusCode == 200) {
    return '200';
  } else
    throw Exception('Failed');
}

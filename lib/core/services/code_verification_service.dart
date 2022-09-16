import 'dart:convert';
import 'package:altogic_orange/core/services/keys.dart';
import 'package:http/http.dart' as http;

Future<String> verificationCodeSend(String _verificationCode) async {
  final response = await http.post(
    Uri.parse(ApiConstants.baseUrl + ApiConstants.codeVerify),
    headers: <String, String>{
      'Content-Type': 'application/json; charset=UTF-8',
    },
    body: jsonEncode(<String, String>{
      'code': _verificationCode,
    }),
  );
  if (response.statusCode == 200) {
    return '200';
  } else
    throw Exception('Failed');
}

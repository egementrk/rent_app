import 'dart:convert';
import 'package:altogic_orange/core/models/user_model.dart';
import 'package:altogic_orange/core/services/keys.dart';
import 'package:flutter/foundation.dart';
import 'package:http/http.dart' as http;

Future<List<UserModel>> fetchUsers(http.Client client) async {
  final response = await client.get(
    Uri.parse(ApiConstants.baseUrl + ApiConstants.getCleaners),
    // headers: <String, String>{
    //   'Content-Type': 'application/json; charset=UTF-8',
    // },
  );

  // Use the compute function to run parsePhotos in a separate isolate.
  return compute(parseUsers, response.body);
}

// A function that converts a response body into a List<Photo>.
List<UserModel> parseUsers(String responseBody) {
  final parsed = jsonDecode(responseBody).cast<Map<String, dynamic>>();

  return parsed.map<UserModel>((json) => UserModel.fromJson(json)).toList();
}

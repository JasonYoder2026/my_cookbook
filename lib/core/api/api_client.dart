import 'dart:convert';

import 'package:http/http.dart' as http;

import '../config/api_config.dart';

class ApiClient {
  Future<http.Response> get(String path) async {
    return await http.get(Uri.parse('${ApiConfig.baseUrl}$path'));
  }

  Future<http.Response> post(String path, {Object? body}) async {
    return await http.post(
      Uri.parse('${ApiConfig.baseUrl}$path'),
      headers: {'Content-Type': 'application/json'},
      body: body != null ? jsonEncode(body) : null,
    );
  }
}

import 'dart:convert';

import 'package:http/http.dart' as http;

import '../config/api_config.dart';

class HealthService {
  Future<String> health() async {
    final response = await http.get(
      Uri.parse('${ApiConfig.baseUrl}/api/health'),
    );

    if (response.statusCode != 200) {
      throw Exception('Health check failed');
    }

    return response.body;
  }
}

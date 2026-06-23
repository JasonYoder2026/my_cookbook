import './api_client.dart';

class SystemService {
  final ApiClient _client;

  SystemService(this._client);

  Future<String> health() async {
    final response = await _client.get('/api/health');

    if (response.statusCode != 200) {
      throw Exception('Health check failed');
    }

    return response.body;
  }
}

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

  Future<void> logWarn(String message) async {
    await _client.post('/api/logs/warn', body: {'message': message});
  }

  Future<void> logError(
    String message,
    Object? error,
    StackTrace? stackTrace,
  ) async {
    await _client.post(
      '/api/logs/error',
      body: {
        'message': message,
        'error': error?.toString(),
        'stackTrace': stackTrace?.toString(),
      },
    );
  }

  Future<void> logInfo(String message) async {
    await _client.post('/api/logs/info', body: {'message': message});
  }

  Future<void> logDebug(String message) async {
    await _client.post('/api/logs/debug', body: {'message': message});
  }
}

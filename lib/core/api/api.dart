import 'system.dart';
import 'auth.dart';
import './api_client.dart';

class API {
  API(ApiClient client)
    : system = SystemService(client),
      auth = AuthApi(client);

  final SystemService system;
  final AuthApi auth;
}

import 'health.dart';

class API {
  API._();
  static final API _instance = API._();

  static API get instance => _instance;

  final HealthService health = HealthService();
}

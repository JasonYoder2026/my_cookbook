import '../di/service_locator..dart';
import './api_client.dart';

class AuthApi {
  final ApiClient _client = getIt<ApiClient>();
}

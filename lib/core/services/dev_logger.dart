import '../interfaces/logger_service.dart';

class DevLoggerService implements LoggerService {
  @override
  void debug(String message) {
    print('[DEBUG] $message');
  }

  @override
  void info(String message) {
    print('[INFO] $message');
  }

  @override
  void warn(String message) {
    print('[WARN] $message');
  }

  @override
  void error(String message, {Object? error, StackTrace? stackTrace}) {
    print('[ERROR] $message');
    print(error);
    print(stackTrace);
  }
}

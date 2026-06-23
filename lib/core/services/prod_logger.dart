import '../interfaces/logger_service.dart';
import '../api/api.dart';

class ProdLoggerService implements LoggerService {
  final API api;

  ProdLoggerService(this.api);

  @override
  void warn(String message) {
    api.system.logWarn(message);
  }

  @override
  void error(String message, {Object? error, StackTrace? stackTrace}) {
    api.system.logError(message, error, stackTrace);
  }

  @override
  void info(String message) {
    api.system.logInfo(message);
  }

  @override
  void debug(String message) {
    api.system.logDebug(message);
  }
}

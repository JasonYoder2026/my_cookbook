abstract class LoggerService {
  void debug(String message);

  void info(String message);

  void warn(String message);

  void error(String message, {Object? error, StackTrace? stackTrace});
}

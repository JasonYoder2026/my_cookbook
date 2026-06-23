import 'package:get_it/get_it.dart';
import 'package:my_cookbook/core/services/api.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupDependendies() async {
  getIt.registerLazySingleton<API>(() => API());
}

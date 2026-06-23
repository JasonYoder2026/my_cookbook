import 'package:get_it/get_it.dart';
import 'package:my_cookbook/core/api/api.dart';
import 'package:my_cookbook/core/api/api_client.dart';

final GetIt getIt = GetIt.instance;

Future<void> setupDependendies() async {
  getIt.registerLazySingleton<ApiClient>(() => ApiClient());

  getIt.registerLazySingleton<API>(() => API());
}

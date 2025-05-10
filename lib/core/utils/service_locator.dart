import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

import '../../repos/news_repo_impl.dart';
import 'api_service.dart';

final getIt = GetIt.instance;

void serviceLocator() {
  getIt.registerLazySingleton<Dio>(() => Dio());
  getIt.registerLazySingleton<ApiService>(() => ApiService(getIt<Dio>()));
  getIt.registerSingleton<NewsRepoImpl>(NewsRepoImpl(getIt<ApiService>()));
}

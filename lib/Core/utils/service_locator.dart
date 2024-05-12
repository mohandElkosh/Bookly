import 'package:dio/dio.dart';
import 'package:ecommerce_get/Core/utils/api_services.dart';
import 'package:ecommerce_get/Features/home/data/reopo/home_repo_implementation.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void setupServiceLocator() {
  getIt.registerSingleton<ApiServices>(ApiServices(Dio()));
  getIt.registerSingleton<HomeRepoImpl>(
    HomeRepoImpl(
      getIt.get<ApiServices>(),
    ),
  );
}

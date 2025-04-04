import 'package:alpha_app/core/utils/api_service.dart';
import 'package:alpha_app/features/home/data/repos/home_repoimple.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';

final getIt = GetIt.instance;

void homeSetup() {
  getIt.registerSingleton<ApiService>(ApiService(dio: Dio()));
  getIt.registerSingleton<HomeRepoimple>(
    HomeRepoimple(apiService: getIt.get<ApiService>()),
  );
}

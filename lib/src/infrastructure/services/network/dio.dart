import 'package:code_demo/src/infrastructure/consts/consts.dart';
import 'package:code_demo/src/modules/auth/domain/usecases/auth_usecase.dart';
import 'package:dio/dio.dart';

import '../../../modules/auth/domain/usecases/token_usecase.dart';
import 'connection_service.dart';
import 'app_interceptor.dart';

class DioConfig {
  static final DioConfig _instance = DioConfig._();
  factory DioConfig() => _instance;
  DioConfig._();

  void setupDio({
    required ConnectivityService connectivityService,
    required TokenUseCase tokenUseCase,
    required AuthUseCase authUseCase,
  }) {
    dio.interceptors.add(AppInterceptor(
      connectivityService: connectivityService,
      tokenUseCase: tokenUseCase,
      authUseCase: authUseCase,
    ));
  }

  final dio = Dio(BaseOptions(baseUrl: baseUrl));

  void setBaseUrl(String baseUrl) {
    dio.options.baseUrl = baseUrl;
  }

  void addLoggingInterceptor() {
    dio.interceptors
        .add(LogInterceptor(requestBody: true, responseBody: true));
  }
}

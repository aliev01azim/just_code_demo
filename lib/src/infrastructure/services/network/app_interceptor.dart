// Package imports:
import 'package:dio/dio.dart';

// Project imports:
import 'package:code_demo/src/infrastructure/services/hive_service.dart';
import 'package:code_demo/src/infrastructure/services/network/connection_service.dart';
import 'package:code_demo/src/modules/auth/domain/usecases/auth_usecase.dart';
import '../../../../di.dart';
import '../../../modules/auth/domain/usecases/token_usecase.dart';
import '../../routes/routes.dart';

class AppInterceptor extends Interceptor {
  final ConnectivityService connectivityService;
  final TokenUseCase tokenUseCase;
  final AuthUseCase authUseCase;

  AppInterceptor({
    required this.connectivityService,
    required this.tokenUseCase,
    required this.authUseCase,
  });

  @override
  Future onRequest(
      RequestOptions options, RequestInterceptorHandler handler) async {
    final token = tokenUseCase.getToken(); // Получение токена из хранилища
    if (!connectivityService.hasActiveConnection) {
      throw DioException(
        error: 'No internet connection.',
        requestOptions: options,
      );
    }
    if (token != null) {
      options.headers['Authorization'] = 'Bearer ${token.token}';
    }
    return super.onRequest(options, handler);
  }

  @override
  Future<void> onError(
    DioException err,
    ErrorInterceptorHandler handler,
  ) async {
    if (err.response?.statusCode == 401) {
      final tokenResult =
          await tokenUseCase.refreshToken(tokenUseCase.getToken()!.refresh);
      await tokenResult.fold((l) async {
        await di.appRouter.pushAndPopUntil(
          const AuthModuleRoute(),
          predicate: (route) => route is AuthModuleRoute,
        );
        return handler.reject(err);
      }, (r) async {
        await HiveService.saveToken(r);
      });
    }
    return handler.next(err);
  }
}

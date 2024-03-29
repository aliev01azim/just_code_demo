// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:code_demo/src/infrastructure/services/hive_service.dart';
import 'package:code_demo/src/modules/auth/data/dto/token.dart';
import 'package:code_demo/src/modules/auth/data/dto/user_dto.dart';
import 'package:dio/dio.dart';
import '../../../../infrastructure/utils/exceptions.dart';
import 'auth_data_source.dart';

class AuthDataSourceImpl implements AuthDataSource {
  final Dio dio;
  AuthDataSourceImpl(this.dio);

  @override
  Future<Either<SigninException, UserDTO>> signinUser(
      String email, String password) async {
    try {
      await Future.delayed(const Duration(seconds: 2));

      //Это просто имитация возвращения User-a,
      //так как JsonPlaceholder не предусматривает авторизацию
      // final response = await dio.post('/auth/login');
      // if (response.statusCode == 200) {
      return Right(UserDTO(
          id: 1, name: 'Azim', accessToken: 'access', refreshToken: 'refresh'));
      // } else {
      // return Left(SigninException('Error from server'));
      // }
    } on DioException catch (e) {
      return Left(SigninException(e.message ?? 'Failed to sign in'));
    }
  }

  @override
  Future<Either<LoginException, UserDTO>> loginUser(
      String email, String password) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      // final response = await dio.post('/auth/login');
      // if (response.statusCode == 200) {
      return Right(UserDTO(
          id: 1, name: 'Azim', accessToken: 'access', refreshToken: 'refresh'));
      // } else {
      // return Left(LoginException('Error from server'));
      // }
    } on DioException catch (e) {
      return Left(LoginException(e.message ?? 'Failed to login'));
    }
  }

  @override
  Future<void> logOut() async {
    await HiveService.deleteToken();
  }

  @override
  AuthToken? getToken() {
    return HiveService.getToken();
  }

  @override
  Future<void> saveToken(AuthToken token) async {
    await HiveService.saveToken(token);
  }

  @override
  Future<Either<RefreshException, AuthToken>> refreshToken(
      String refresh) async {
    try {
      final response =
          await dio.post('/token/refresh', data: {'refresh': refresh});
      if (response.statusCode == 200) {
        return Right(AuthToken(token: 'access', refresh: 'refresh'));
      }
    } on DioException catch (e) {
      return Left(RefreshException(
          e.message ?? 'На сервере ведутся работы,перезайдите позже'));
    }
    return Left(
        RefreshException('На сервере ведутся работы,перезайдите позже'));
  }
}

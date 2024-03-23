// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import 'package:code_demo/src/infrastructure/services/hive_service.dart';
import 'package:code_demo/src/modules/auth/data/dto/token.dart';
import 'package:code_demo/src/modules/auth/data/dto/user_dto.dart';
import '../../../../infrastructure/utils/exceptions.dart';
import 'auth_data_source.dart';

class AuthDataSourceImpl implements AuthDataSource {
  final String baseUrl;
  AuthDataSourceImpl(this.baseUrl);

  @override
  Future<Either<SigninException, UserDTO>> signinUser(
      String email, String password) async {
    try {
      //Это просто имитация возвращения User-a,
      //так как JsonPlaceholder не предусматривает авторизацию

      await Future.delayed(const Duration(seconds: 2));
      // if (response['statusCode'] == 200) {
      return Right(UserDTO(
          id: 1, name: 'Azim', accessToken: 'access', refreshToken: 'refresh'));
      // } else {
      // return Left(SigninException('Error from server'));
      // }
    } catch (e) {
      return Left(SigninException('Failed to sign in'));
    }
  }

  @override
  Future<Either<LoginException, UserDTO>> loginUser(
      String email, String password) async {
    try {
      await Future.delayed(const Duration(seconds: 2));
      // if (response['statusCode'] == 200) {
      return Right(UserDTO(
          id: 1, name: 'Azim', accessToken: 'access', refreshToken: 'refresh'));
      // } else {
      // return Left(LoginException('Error from server'));
      // }
    } catch (e) {
      return Left(LoginException('Failed to login'));
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
}

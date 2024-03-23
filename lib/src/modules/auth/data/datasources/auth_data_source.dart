// Package imports:
import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

// Project imports:
import 'package:code_demo/src/modules/auth/data/dto/user_dto.dart';
import '../../../../infrastructure/utils/exceptions.dart';
import '../dto/token.dart';

abstract class AuthDataSource {
  Future<Either<SigninException, UserDTO>> signinUser(
      String email, String password);
  Future<Either<LoginException, UserDTO>> loginUser(
      String email, String password);
  Future<void> logOut();

  Future<void> saveToken(AuthToken token);
  AuthToken? getToken();
}

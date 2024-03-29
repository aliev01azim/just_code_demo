// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import '../../../../infrastructure/utils/exceptions.dart';
import '../../domain/entities/user_with_token.dart';
import '../dto/token.dart';

abstract class AuthRepository {
  Future<Either<SigninException, UserWithToken>> signinUser(
      {required String email, required String password});
  Future<Either<LoginException, UserWithToken>> loginUser(
      {required String email, required String password});
  Future<void> logOut();
  Future<void> saveToken(AuthToken token);
  AuthToken? getToken();
  Future<Either<RefreshException, AuthToken>> refreshToken(String refresh);
}

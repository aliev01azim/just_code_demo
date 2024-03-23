// Package imports:
import 'package:dartz/dartz.dart';

// Project imports:
import '../../../../infrastructure/utils/exceptions.dart';
import '../../data/repositories/auth_repository.dart';
import '../entities/user_with_token.dart';

class AuthUseCase {
  final AuthRepository _repository;

  AuthUseCase(this._repository);

  Future<Either<SigninException, UserWithToken>> signinUser(
      {required String email, required String password}) {
    return _repository.signinUser(email: email, password: password);
  }

  Future<Either<LoginException, UserWithToken>> loginUser(
      {required String email, required String password}) {
    return _repository.loginUser(email: email, password: password);
  }

  Future<void> logOut() {
    return _repository.logOut();
  }
}

import 'package:dartz/dartz.dart';

import '../../data/repositories/authentication_repository.dart';
import '../entities/user.dart';
import '../exceptions/auth_exceptions.dart';

class AuthenticationUseCase {
  final AuthenticationRepository _repository;

  AuthenticationUseCase(this._repository);

  Future<Either<LoginException, UserModel>> loginUser(
      {required String email, required String password}) {
    return _repository.loginUser(email:email, password:password);
  }
}

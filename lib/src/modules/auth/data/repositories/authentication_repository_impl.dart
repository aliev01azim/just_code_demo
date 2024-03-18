import 'package:code_demo/src/modules/auth/domain/entities/user.dart';

import 'package:code_demo/src/modules/auth/domain/exceptions/auth_exceptions.dart';

import 'package:dartz/dartz.dart';

import '../datasources/remote_data_source.dart';
import 'authentication_repository.dart';

class AuthenticationRepositoryImpl implements AuthenticationRepository {
  final RemoteDataSource _remoteDataSource;

  AuthenticationRepositoryImpl(this._remoteDataSource);
  @override
  Future<Either<LoginException, UserModel>> loginUser(
      {required String email, required String password}) async {
    return _remoteDataSource.loginUser(email, password);
  }
}

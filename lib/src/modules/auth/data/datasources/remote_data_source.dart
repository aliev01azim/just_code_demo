import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/entities/user.dart';
import '../../domain/exceptions/auth_exceptions.dart';

abstract class RemoteDataSource {

  Future<Either<LoginException, UserModel>> loginUser(
      String email, String password);
}

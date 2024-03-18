import 'package:dartz/dartz.dart';

import '../../domain/entities/user.dart';
import '../../domain/exceptions/auth_exceptions.dart';

abstract class AuthenticationRepository{
  Future<Either<LoginException, UserModel>> loginUser(
      {required String email, required String password});
}
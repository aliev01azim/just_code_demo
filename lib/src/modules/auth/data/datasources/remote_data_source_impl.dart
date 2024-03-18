import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';

import '../../domain/entities/user.dart';
import '../../domain/exceptions/auth_exceptions.dart';
import 'remote_data_source.dart';


class RemoteDataSourceImpl implements RemoteDataSource {
  @override
  Future<Either<LoginException, UserModel>> loginUser(
      String email, String password) async {
    // final response = await Dio().post(
    //   '/login',
    //   data: {'email': email, 'password': password},
    // );

    // if (response.statusCode == 200) {
      await Future.delayed(const Duration(seconds: 2));
      // return Right(UserModel(id: 1, name: 'Azim'));
      //Это просто имитация возвращения User-a,так как JsonPlaceholder не предусматривает авторизацию
    // } else {
      return Left(LoginException('Failed to login'));
    // }
  }
}

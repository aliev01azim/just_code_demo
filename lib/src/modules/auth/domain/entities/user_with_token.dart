// ignore_for_file: public_member_api_docs, sort_constructors_first

// Project imports:
import 'package:code_demo/src/modules/auth/data/dto/token.dart';
import 'user.dart';

class UserWithToken {
  final UserModel user;
  final AuthToken token;
  UserWithToken({
    required this.user,
    required this.token,
  });
}

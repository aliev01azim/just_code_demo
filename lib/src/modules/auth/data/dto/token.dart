// Package imports:
import 'package:hive_flutter/hive_flutter.dart';

// Project imports:
import 'user_dto.dart';

part 'token.g.dart';

@HiveType(typeId: 1)
class AuthToken {
  @HiveField(0)
  final String token;
  @HiveField(1)
  final String refresh;
  AuthToken({
    required this.token,
    required this.refresh,
  });

  AuthToken copyWith({
    String? token,
    String? refresh,
  }) {
    return AuthToken(
      token: token ?? this.token,
      refresh: refresh ?? this.refresh,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'token': token,
      'refresh': refresh,
    };
  }

  factory AuthToken.fromDTO(UserDTO userDTO) {
    return AuthToken(
      token: userDTO.accessToken,
      refresh: userDTO.refreshToken,
    );
  }

  @override
  String toString() => 'AuthToken(token: $token, refresh: $refresh)';

  @override
  bool operator ==(covariant AuthToken other) {
    if (identical(this, other)) return true;

    return other.token == token && other.refresh == refresh;
  }

  @override
  int get hashCode => token.hashCode ^ refresh.hashCode;
}

// Dart imports:
import 'dart:developer';

// Project imports:
import 'package:code_demo/src/modules/auth/domain/usecases/token_usecase.dart';
import 'src/modules/auth/data/datasources/auth_data_source_impl.dart';
import 'src/modules/auth/data/repositories/auth_repository_impl.dart';
import 'src/modules/auth/domain/usecases/auth_usecase.dart';

final di = _DIContainer();

class _DIContainer {
  static final _DIContainer _instance = _DIContainer._();
  factory _DIContainer() => _instance;
  static const _baseUrl = 'https:json.placeholder';
  late final AuthDataSourceImpl _authDataSource;
  late final AuthRepositoryImpl _authRepository;
  late final AuthUseCase authUseCase;
  late final TokenUseCase tokenUseCase;
  _DIContainer._() {
    _authDataSource = AuthDataSourceImpl(_baseUrl);
    _authRepository = AuthRepositoryImpl(_authDataSource);
    authUseCase = AuthUseCase(_authRepository);
    tokenUseCase = TokenUseCase(_authRepository);
  }
}

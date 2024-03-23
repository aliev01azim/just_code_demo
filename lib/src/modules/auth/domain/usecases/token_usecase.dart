// Project imports:
import '../../data/dto/token.dart';
import '../../data/repositories/auth_repository.dart';

class TokenUseCase {
  final AuthRepository _repository;

  TokenUseCase(this._repository);

  Future<void> saveToken(AuthToken token) async {
    await _repository.saveToken(token);
  }

  AuthToken? getToken() {
    return _repository.getToken();
  }

}

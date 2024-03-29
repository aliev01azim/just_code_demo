class RefreshException implements Exception {
  final String error;
  RefreshException(this.error);
}

class InternetException implements Exception {
  final String error;
  InternetException(this.error);
}

class LoginException implements Exception {
  final String error;
  LoginException(this.error);
}

class SigninException implements Exception {
  final String error;
  SigninException(this.error);
}

class LogoutException implements Exception {
  final String error;
  LogoutException(this.error);
}

class PostsException implements Exception {
  final String error;
  PostsException(this.error);
}

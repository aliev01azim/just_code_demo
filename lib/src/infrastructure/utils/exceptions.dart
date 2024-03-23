class LoginException implements Exception{
  final String error;
  LoginException(this.error);
}
class SigninException implements Exception{
  final String error;
  SigninException(this.error);
}
class LogoutException implements Exception{
  final String error;
  LogoutException(this.error);
}
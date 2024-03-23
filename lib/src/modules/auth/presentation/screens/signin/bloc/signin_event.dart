part of 'signin_bloc.dart';

@freezed
class SigninEvent with _$SigninEvent {
  const factory SigninEvent.signingIn(
      {required String email, required String password}) = SigningIn;
  const factory SigninEvent.hidePassword() = HidePassword;
}

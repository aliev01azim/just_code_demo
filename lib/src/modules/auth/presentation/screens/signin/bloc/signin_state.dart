part of 'signin_bloc.dart';

@freezed
class SigninState with _$SigninState {
  const factory SigninState.initial(
      {@Default(false) bool show,
      @Default(false) bool loading,
      String? error,
      UserModel? user}) = Initial;
}

// Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:meta/meta.dart';

// Project imports:
import '../../../../domain/entities/user.dart';
import '../../../../domain/usecases/auth_usecase.dart';
import '../../../../domain/usecases/token_usecase.dart';

part 'signin_bloc.freezed.dart';
part 'signin_event.dart';
part 'signin_state.dart';

class SigninBloc extends Bloc<SigninEvent, SigninState> {
  final AuthUseCase authUseCase;
  final TokenUseCase tokenUseCase;
  SigninBloc({required this.authUseCase, required this.tokenUseCase})
      : super(const Initial()) {
    on<SigningIn>((event, emit) async {
      emit(state.copyWith(loading: true, error: null));
      final result = await authUseCase.signinUser(
          email: event.email, password: event.password);
      await result.fold(
        (l) async => emit(state.copyWith(error: l.error, loading: false)),
        (r) async {
          await tokenUseCase.saveToken(r.token);
          emit(
            state.copyWith(user: r.user, loading: false),
          );
        },
      );
    });
    on<HidePassword>((event, emit) async {
      emit(state.copyWith(show: !state.show));
    });
  }
}

// ignore_for_file: depend_on_referenced_packages

// Package imports:
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

// Project imports:
import 'package:code_demo/src/modules/auth/domain/entities/user.dart';
import 'package:code_demo/src/modules/auth/domain/usecases/token_usecase.dart';
import '../../../../domain/usecases/auth_usecase.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthUseCase authUseCase;
  final TokenUseCase tokenUseCase;
  LoginBloc({required this.authUseCase, required this.tokenUseCase})
      : super(const LoginState.initial()) {
    on<Logging>((event, emit) async {
      emit(state.copyWith(loading: true,error: null));
      final result = await authUseCase.loginUser(
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

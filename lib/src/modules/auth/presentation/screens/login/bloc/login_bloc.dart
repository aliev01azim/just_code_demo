import 'package:bloc/bloc.dart';
import 'package:code_demo/src/modules/auth/domain/entities/user.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../../domain/usecases/authentication_usecase.dart';
part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthenticationUseCase authenticationUseCase;
  LoginBloc({required this.authenticationUseCase})
      : super(const LoginState.initial()) {
    on<Logging>((event, emit) async {
      emit(state.copyWith(loading: true));
      final result = await authenticationUseCase.loginUser(
          email: event.email, password: event.password);
      result.fold(
        (l) => emit(state.copyWith(error: l.error, loading: false)),
        (r) => emit(
          state.copyWith(user: r, loading: false),
        ),
      );
    });
  }
}

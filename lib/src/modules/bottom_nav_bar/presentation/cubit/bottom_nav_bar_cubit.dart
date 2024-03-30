// Package imports:
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

// Project imports:
import 'package:code_demo/src/modules/auth/domain/usecases/auth_usecase.dart';

part 'bottom_nav_bar_state.dart';

class BottomNavBarCubit extends Cubit<BottomNavBarState> {
  final AuthUseCase authUseCase;
  BottomNavBarCubit({required this.authUseCase}) : super(BottomNavBarInitial());
  Future<void> logOut()async{
    await authUseCase.logOut();
    emit(BottomNavBarLoggedOut());
  }
}

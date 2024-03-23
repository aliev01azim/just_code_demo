// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:code_demo/src/infrastructure/routes/routes.dart';
import 'package:code_demo/src/modules/auth/domain/usecases/token_usecase.dart';

class AuthGuard extends AutoRouteGuard {
  AuthGuard({required this.tokenUseCase});
  final TokenUseCase tokenUseCase;
  @override
  void onNavigation(NavigationResolver resolver, StackRouter router) async{
    if (tokenUseCase.getToken() != null) {
      resolver.next(true);
    } else {
      router.push(const AuthModuleRoute());
    }
  }
}

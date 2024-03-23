// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Project imports:
import 'package:code_demo/src/modules/auth/presentation/screens/signin/bloc/signin_bloc.dart';
import '../../../../../../di.dart';

@RoutePage()
class SigninWrapperScreen extends StatelessWidget {
  const SigninWrapperScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => SigninBloc(
          authUseCase: di.authUseCase, tokenUseCase: di.tokenUseCase),
      child: const AutoRouter(),
    );
  }
}

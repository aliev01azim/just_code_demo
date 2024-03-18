import 'package:code_demo/src/modules/auth/data/repositories/authentication_repository_impl.dart';
import 'package:code_demo/src/modules/auth/presentation/screens/login/bloc/login_bloc.dart';
import 'package:code_demo/src/modules/auth/presentation/screens/login/login_screen.dart';
import 'package:code_demo/src/modules/auth/presentation/screens/signin/signin_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'modules/auth/data/datasources/remote_data_source.dart';
import 'modules/auth/data/datasources/remote_data_source_impl.dart';
import 'modules/auth/data/repositories/authentication_repository.dart';
import 'modules/auth/domain/usecases/authentication_usecase.dart';
import 'modules/auth/presentation/auth_screen.dart';

/// The Widget that configures your application.
class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => LoginBloc(
          authenticationUseCase: AuthenticationUseCase(
              AuthenticationRepositoryImpl(RemoteDataSourceImpl()))),
      child: MaterialApp(
        restorationScopeId: 'app',
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        supportedLocales: const [
          Locale('en', ''),
          Locale('ru', ''),
        ],
        onGenerateTitle: (BuildContext context) =>
            AppLocalizations.of(context)!.appTitle,
        home: const AuthScreen(),
        debugShowCheckedModeBanner: false,
        routes: {
          '/login': (context) => const LoginScreen(),
          '/signin': (context) => const SigninScreen(),
        },
      ),
    );
  }
}

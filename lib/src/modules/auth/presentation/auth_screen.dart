// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// Project imports:
import 'package:code_demo/src/infrastructure/consts/consts.dart';
import 'package:code_demo/src/infrastructure/routes/routes.dart';
import '../../../infrastructure/services/hive_service.dart';

@RoutePage()
class AuthModuleScreen extends StatelessWidget {
  const AuthModuleScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const AutoRouter();
  }
}

@RoutePage()
class AuthScreen extends StatelessWidget {
  const AuthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.auth),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              ElevatedButton(
                  onPressed: () => context.pushRoute(const LoginRoute()),
                  child: Text(AppLocalizations.of(context)!.login)),
              ElevatedButton(
                  onPressed: () =>
                      context.pushRoute(const SigninWrapperRoute()),
                  child: Text(AppLocalizations.of(context)!.signin)),
            ],
          ),
        ),
      ),
    );
  }
}

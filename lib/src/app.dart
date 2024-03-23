// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// Project imports:
import 'package:code_demo/src/infrastructure/routes/routes.dart';
import 'infrastructure/consts/consts.dart';
import 'infrastructure/consts/theme.dart';

class MyApp extends StatelessWidget {
  const MyApp({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      restorationScopeId: restorationScopeId,
      localizationsDelegates: localizationsDelegates,
      supportedLocales: supportedLocales,
      routerConfig: AppRouter().config(),
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,
      debugShowCheckedModeBanner: false,
    );
  }
}

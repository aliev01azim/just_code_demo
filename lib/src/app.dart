// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// Project imports:
import '../di.dart';
import 'infrastructure/consts/consts.dart';
import 'infrastructure/consts/theme.dart';

class App extends StatelessWidget {
  const App({
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
      routerConfig: di.appRouter.config(),
      onGenerateTitle: (BuildContext context) =>
          AppLocalizations.of(context)!.appTitle,
      debugShowCheckedModeBanner: false,
    );
  }
}

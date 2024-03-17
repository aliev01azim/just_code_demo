import 'package:flutter/material.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

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
                  onPressed: () => Navigator.of(context).pushNamed('/login'),
                  child: Text(AppLocalizations.of(context)!.login)),
              ElevatedButton(
                  onPressed: () => Navigator.of(context).pushNamed('/signin'),
                  child: Text(AppLocalizations.of(context)!.signin)),
            ],
          ),
        ),
      ),
    );
  }
}

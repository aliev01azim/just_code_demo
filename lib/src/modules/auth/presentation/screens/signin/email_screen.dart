// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// Project imports:
import 'package:code_demo/src/infrastructure/routes/routes.dart';
import 'package:code_demo/src/infrastructure/utils/extensions.dart';
import '../../../../../infrastructure/consts/styles.dart';
import '../../widgets/mini_btn.dart';
import '../../widgets/text_field.dart';

@RoutePage()
class EmailScreen extends StatefulWidget {
  const EmailScreen({super.key});

  @override
  State<EmailScreen> createState() => _EmailScreenState();
}

class _EmailScreenState extends State<EmailScreen> {
  final _emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.signin),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const SizedBox(height: 24),
              Text(
                'Заполните Email',
                style: TextStyles.textTitle(fontSize: 36),
              ),
              const SizedBox(height: 40),
              CTextField(
                keyboardType: TextInputType.emailAddress,
                hintText: 'Enter your email',
                validator: (p02) {
                  if (p02 != null && !p02.isValidEmail()) {
                    return 'Введите почту корректно';
                  }
                  return null;
                },
                controller: _emailController,
              ),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.center,
                child: MiniBtn(
                  onTap: () async {
                    if (formKey.currentState?.validate() == true) {
                      context.pushRoute(
                          PasswordRoute(email: _emailController.text));
                    }
                  },
                  text: 'Next',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

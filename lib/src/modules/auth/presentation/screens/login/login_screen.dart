import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

import '../../../../../infrastructure/consts/consts.dart';
import '../../../../../infrastructure/consts/styles.dart';
import '../../widgets/mini_btn.dart';
import '../../widgets/text_field.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  bool emailEnable = false;
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  final _passwordController = TextEditingController();
  bool isError = false;
  bool passwordEnable = false;
  bool hide = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.login),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Form(
          key: formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Text(
                'Email or username',
                style: TextStyles.textTitle(),
              ),
              const SizedBox(height: 16),
              CTextField(
                keyboardType: TextInputType.emailAddress,
                hintText: 'Enter your email',
                validator: (p02) {
                  if (p02 != null && !p02.contains('@')) {
                    return 'Введите почту корректно';
                  }
                  return null;
                },
                controller: _emailController,
                onChanged: (p02) {
                  if (p02.isNotEmpty) {
                    setState(() {
                      emailEnable = true;
                    });
                  } else {
                    setState(() {
                      emailEnable = false;
                    });
                  }
                },
              ),
              const SizedBox(height: 24),
              Text(
                'Password',
                style: TextStyles.textTitle(),
              ),
              const SizedBox(height: 16),
              CTextField(
                style: TextStyles.main(
                    color: isError ? AppColors.red : Colors.white),
                errorTextStyle: TextStyles.textGrey(color: AppColors.red),
                obscureText: hide,
                suffixIcon: InkWell(
                    onTap: () {
                      setState(() {
                        hide = !hide;
                      });
                    },
                    child: Icon(
                      hide
                          ? Icons.remove_red_eye_outlined
                          : Icons.visibility_off_outlined,
                      color: Colors.white,
                    )),
                prefix: const SizedBox(width: 16),
                validator: (p03) {
                  if (p03 != null && p03.length < 8) {
                    setState(() {
                      isError = true;
                    });
                    return 'Use at least 8 characters';
                  }
                  setState(() {
                    isError = false;
                  });
                  return null;
                },
                controller: _passwordController,
                onChanged: (p03) {
                  if (p03.isNotEmpty) {
                    setState(() {
                      passwordEnable = true;
                    });
                  } else {
                    setState(() {
                      passwordEnable = false;
                    });
                  }
                },
              ),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.center,
                child: MiniBtn(
                  isLoading: false,
                  onTap: () async {
                    if (formKey.currentState?.validate() == true) {}
                  },
                  text: 'Next',
                  enable: emailEnable && passwordEnable,
                ),
              ),
              const SizedBox(height: 24),
              Align(
                alignment: Alignment.center,
                child: Text(
                  'Log in without password',
                  style: TextStyles.textButton(color: Colors.white),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

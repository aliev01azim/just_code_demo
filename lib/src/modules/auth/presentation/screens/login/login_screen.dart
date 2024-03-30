// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// Project imports:
import 'package:code_demo/src/infrastructure/routes/routes.dart';
import 'package:code_demo/src/infrastructure/utils/extensions.dart';
import 'package:code_demo/src/modules/auth/presentation/screens/login/bloc/login_bloc.dart';
import '../../../../../../di.dart';
import '../../../../../infrastructure/consts/styles.dart';
import '../../widgets/mini_btn.dart';
import '../../widgets/text_field.dart';

@RoutePage()
class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.login),
      ),
      body: BlocProvider(
        create: (context) => LoginBloc(
            authUseCase: di.authUseCase, tokenUseCase: di.tokenUseCase),
        child: BlocListener<LoginBloc, LoginState>(
          listener: (context, state) {
            if (state.user != null) {
              context.router.pushAndPopUntil(
                const BottomNavBarRoute(),
                predicate: (route) => route is BottomNavBarRoute,
              );
            }
            if (state.error != null) {
              Flushbar(
                title: state.error,
                duration: const Duration(seconds: 2),
              ).show(context);
            }
          },
          listenWhen: (p, c) => c.user != null || c.error != null,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Form(
              key: formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 24),
                  Text(
                    'Email',
                    style: TextStyles.textTitle(),
                  ),
                  const SizedBox(height: 16),
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
                  Text(
                    'Password',
                    style: TextStyles.textTitle(),
                  ),
                  const SizedBox(height: 16),
                  BlocSelector<LoginBloc, LoginState, bool>(
                    selector: (state) {
                      return !state.show;
                    },
                    builder: (context, show) {
                      return CTextField(
                        hintText: 'Enter your password',
                        style: TextStyles.main(color: Colors.black),
                        obscureText: show,
                        suffixIcon: InkWell(
                            onTap: () {
                              context
                                  .read<LoginBloc>()
                                  .add(const LoginEvent.hidePassword());
                            },
                            child: Icon(
                              show
                                  ? Icons.remove_red_eye_outlined
                                  : Icons.visibility_off_outlined,
                              color: Colors.black,
                            )),
                        validator: (p03) {
                          if (p03 != null && p03.length < 8) {
                            return 'Введите минимум 8 символов';
                          }
                          return null;
                        },
                        controller: _passwordController,
                      );
                    },
                  ),
                  const SizedBox(height: 24),
                  Align(
                    alignment: Alignment.center,
                    child: BlocBuilder<LoginBloc, LoginState>(
                      builder: (context, state) {
                        return MiniBtn(
                          isLoading: state.loading,
                          onTap: () async {
                            if (formKey.currentState?.validate() == true) {
                              context.read<LoginBloc>().add(LoginEvent.logging(
                                  email: _emailController.text,
                                  password: _passwordController.text));
                            }
                          },
                          text: 'Next',
                        );
                      },
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

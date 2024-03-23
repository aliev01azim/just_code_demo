// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:another_flushbar/flushbar.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_gen/gen_l10n/app_localizations.dart';

// Project imports:
import 'package:code_demo/src/infrastructure/utils/extensions.dart';
import 'package:code_demo/src/modules/auth/presentation/screens/signin/bloc/signin_bloc.dart';
import '../../../../../infrastructure/consts/styles.dart';
import '../../../../../infrastructure/routes/routes.dart';
import '../../widgets/mini_btn.dart';
import '../../widgets/text_field.dart';

@RoutePage()
class PasswordScreen extends StatefulWidget {
  final String email;
  const PasswordScreen(this.email, {super.key});

  @override
  State<PasswordScreen> createState() => _PasswordScreenState();
}

class _PasswordScreenState extends State<PasswordScreen> {
  final _passwordController = TextEditingController();
  final formKey = GlobalKey<FormState>();
  @override
  void dispose() {
    _passwordController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(AppLocalizations.of(context)!.signin),
      ),
      body: BlocListener<SigninBloc, SigninState>(
        listener: (context, state) {
          if (state.user != null) {
            context.router.pushAndPopUntil(
              const HomeModuleRoute(),
              predicate: (route) => route is HomeModuleRoute,
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
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const SizedBox(height: 24),
                Text(
                  'Заполните пароль',
                  style: TextStyles.textTitle(fontSize: 36),
                ),
                const SizedBox(height: 40),
                BlocSelector<SigninBloc, SigninState, bool>(
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
                                .read<SigninBloc>()
                                .add(const SigninEvent.hidePassword());
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
                  child: BlocSelector<SigninBloc, SigninState, bool>(
                    selector: (state) {
                      return state.loading;
                    },
                    builder: (context, loading) {
                      return MiniBtn(
                        isLoading: loading,
                        onTap: () async {
                          if (formKey.currentState?.validate() == true) {
                            context.read<SigninBloc>().add(
                                SigninEvent.signingIn(
                                    email: widget.email,
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
    );
  }
}

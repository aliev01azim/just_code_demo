// Flutter imports:
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

// Package imports:

// Project imports:
import 'infrastructure/services/network/core.dart';

@RoutePage()
class AppWrapperScreen extends StatefulWidget {
  const AppWrapperScreen({
    super.key,
  });

  @override
  State<AppWrapperScreen> createState() => _AppWrapperScreenState();
}

class _AppWrapperScreenState extends State<AppWrapperScreen>
    with
        ConnectionAwareMixin<AppWrapperScreen>,
        DefaultConnectionAwareStateMixin<AppWrapperScreen>
    implements RestartableStateInterface {
  @override
  Widget buildPage(BuildContext context) {
    //Здесь можно запровайдить MultiBlocProvider 
    //location блок,интернет блок для плашки к примеру тд и тп
    return const AutoRouter();
  }
}

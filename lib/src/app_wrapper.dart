// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

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

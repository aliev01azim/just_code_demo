// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:code_demo/src/infrastructure/routes/routes.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../../../di.dart';
import '../../../home/presentation/screens/posts_bloc/posts_bloc.dart';

@RoutePage()
class BottomNavBarScreen extends StatefulWidget {
  const BottomNavBarScreen({super.key});

  @override
  State<BottomNavBarScreen> createState() => _BottomNavBarScreenState();
}

class _BottomNavBarScreenState extends State<BottomNavBarScreen> {
  @override
  Widget build(BuildContext context) {
    // print('ключи - ${userBox.keys}');
    // print('значения - ${userBox.values}');

    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => PostsBloc(postsUseCase: di.postsUseCase),
        ),
        // BlocProvider(
        //   create: (context) => ProfileBloc(),
        // ),
        // BlocProvider(
        //   create: (context) => SearchBloc(),
        // ),
        // ...
      ],
      child: AutoTabsScaffold(
        routes: const [
          HomeModuleRoute(),
          ProfileModuleRoute(),
          SearchModuleRoute(),
        ],
        bottomNavigationBuilder: (_, tabsRouter) {
          return BottomNavigationBar(
            currentIndex: tabsRouter.activeIndex,
            onTap: tabsRouter.setActiveIndex,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.account_circle_outlined),
                activeIcon: Icon(Icons.account_circle),
                label: 'Profile',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
            ],
          );
        },
        transitionBuilder: (context, child, animation) => FadeTransition(
          opacity: animation,
          child: child,
        ),
      ),
    );
  }
}

// Flutter imports:
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

// Package imports:
import 'package:auto_route/auto_route.dart';

// Project imports:
import 'package:code_demo/src/infrastructure/routes/routes.dart';

@RoutePage()
class HomeModuleScreen extends StatefulWidget {
  const HomeModuleScreen({super.key});

  @override
  State<HomeModuleScreen> createState() => _HomeModuleScreenState();
}

class _HomeModuleScreenState extends State<HomeModuleScreen> {
  @override
  Widget build(BuildContext context) {
    // print('ключи - ${userBox.keys}');
    // print('значения - ${userBox.values}');

    return AutoTabsScaffold(
      routes: const [
        HomeTabRoute(),
        ProfileTabRoute(),
        SearchTabRoute(),
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
    );
  }
}

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'home_tab/home_tab.dart';
import 'library_tab/library_tab.dart';
import 'search_tab/search_tab.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List page =  [
    const HomeTab(),
    const SearchTab(),
    const ProfileTab(),
  ];

  int currerntIndex = 0;
  void onTap(int index) {
    currerntIndex = index;
    setState(() {});
  }

  // final userBox = Hive.box(Boxes.userBox);
  @override
  Widget build(BuildContext context) {
    // print('ключи - ${userBox.keys}');
    // print('значения - ${userBox.values}');

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Home page'),
          actions: [
            IconButton(
              onPressed: () async {
                // await userBox.clear();
                // if (context.mounted) {
                //   Navigator.of(context).pushNamedAndRemoveUntil(
                //       AppRoutes.main, (Route route) => false);
                // }
              },
              icon: const Icon(Icons.logout),
            ),
          ],
        ),
        body: page[currerntIndex],
        bottomNavigationBar: Container(
          decoration: const BoxDecoration(
            boxShadow: <BoxShadow>[
              BoxShadow(
                spreadRadius: 30,
                color: Color.fromARGB(107, 0, 0, 0),
                blurRadius: 70,
              ),
              BoxShadow(
                spreadRadius: 30,
                color: Color.fromARGB(116, 0, 0, 0),
                blurRadius: 70,
              ),
              BoxShadow(
                spreadRadius: 30,
                color: Color.fromARGB(75, 0, 0, 0),
                blurRadius: 70,
              ),
            ],
          ),
          child: BottomNavigationBar(
            currentIndex: currerntIndex,
            onTap: onTap,
            type: BottomNavigationBarType.fixed,
            backgroundColor: Colors.black,
            selectedItemColor: Colors.white,
            unselectedItemColor: Colors.grey.withOpacity(0.5),
            showUnselectedLabels: true,
            // elevation: 10,
            items: const [
              BottomNavigationBarItem(
                icon: Icon(Icons.home_outlined),
                activeIcon: Icon(Icons.home_filled),
                label: 'Home',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.search),
                label: 'Search',
              ),
              BottomNavigationBarItem(
                icon: Icon(Icons.library_music_outlined),
                activeIcon: Icon(Icons.library_music),
                label: 'Library',
              ),
            ],
          ),
        ),
      ),
    );
  }
}

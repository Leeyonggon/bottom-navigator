import 'package:flutter/material.dart';
import 'package:flutter_pratice/signin.dart';
import 'pages/home.dart';
import 'pages/search.dart';
import 'pages/setting.dart';

class Navigation extends StatefulWidget {
  const Navigation({super.key});

  @override
  State<Navigation> createState() => _NavigationState();
}

class _NavigationState extends State<Navigation> {
  int selectIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: NavigationBar(
        // destinations, selectedIndex, onDestinationSelected는 기본적으로 필요
        selectedIndex: selectIndex,
        onDestinationSelected: (value) => setState(() {
          //value에 .length로 배열 길이 전달
          // state에서 값 변화를 위해서 필요 => destination에서 navigationDestination 추가할때마다 bar 추가
          selectIndex = value;
        }),
        destinations: [
          const NavigationDestination(
            // 하나씩 추가
            icon: Icon(Icons.home),
            label: "Home",
            /*selectedIcon: Icon(
              Icons.home,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),*/
          ),
          NavigationDestination(
            icon: const Icon(Icons.search),
            label: "Search",
            selectedIcon: Icon(
              Icons.search_off_rounded,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
          ),
          NavigationDestination(
            icon: const Icon(Icons.settings),
            label: "Settings",
            selectedIcon: Icon(
              Icons.settings,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
          ),
          NavigationDestination(
            icon: const Icon(Icons.login),
            label: "Login",
            selectedIcon: Icon(
              Icons.login,
              color: Theme.of(context).colorScheme.onSecondaryContainer,
            ),
          ),
        ],
        animationDuration: const Duration(microseconds: 500),
      ),
      body: Center(
        child: IndexedStack(
          index: selectIndex,
          children: const [
            RHome(),
            search(),
            setting(),
            SignIn(),
          ],
        ),
      ),
    );
  }
}

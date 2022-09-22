import 'package:flutter/material.dart';

class NavigationBottomBar extends StatefulWidget {
  const NavigationBottomBar({super.key});

  @override
  State<NavigationBottomBar> createState() => _NavigationBottomBarState();
}

class _NavigationBottomBarState extends State<NavigationBottomBar> {
  int _currentTab = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      showUnselectedLabels: false,
      currentIndex: _currentTab,
      onTap: (int value) {
        setState(() {
          _currentTab = value;
        });
      },
      iconSize: 30,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(
            Icons.search,
          ),
          label: 'Search',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            Icons.favorite,
          ),
          label: 'Favorites',
        ),
        BottomNavigationBarItem(
          icon: CircleAvatar(
            backgroundImage: NetworkImage(
                'https://as1.ftcdn.net/v2/jpg/01/13/41/66/1000_F_113416666_a7CuS6cvc6D5P5ezUbsTMexJHm9iAgga.jpg'),
          ),
          label: 'Profile',
        ),
      ],
    );
  }
}

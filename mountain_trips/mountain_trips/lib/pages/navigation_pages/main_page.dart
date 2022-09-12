import 'package:flutter/material.dart';
import 'package:mountain_trips/pages/navigation_pages/bar_item_page.dart';
import 'package:mountain_trips/pages/home_page.dart';
import 'package:mountain_trips/pages/navigation_pages/my_page.dart';
import 'package:mountain_trips/pages/navigation_pages/search_page.dart';

class MainPage extends StatefulWidget {
  MainPage({Key? key}) : super(key: key);

  @override
  State<MainPage> createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  List pages = [
    HomePage(),
    const BarItemPage(),
    const SearchPage(),
    const MyPage(),
  ];

  int currentIndex = 0;

  onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: pages[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        unselectedFontSize: 0,
        selectedFontSize: 0,
        type: BottomNavigationBarType.fixed,
        backgroundColor: Colors.white,
        onTap: onTap,
        currentIndex: currentIndex,
        selectedItemColor: Colors.black54,
        unselectedItemColor: Colors.grey.withOpacity(0.5),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        items: [
          const BottomNavigationBarItem(
            label: "Home",
            icon: const Icon(
              Icons.apps,
            ),
          ),
          const BottomNavigationBarItem(
            label: "Bar",
            icon: Icon(
              Icons.bar_chart_sharp,
            ),
          ),
          const BottomNavigationBarItem(
            label: "Search",
            icon: Icon(
              Icons.search,
            ),
          ),
          const BottomNavigationBarItem(
            label: "My",
            icon: const Icon(
              Icons.person,
            ),
          ),
        ],
      ),
    );
  }
}

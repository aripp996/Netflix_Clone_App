import 'package:flutter/material.dart';

import '../constans.dart';
import 'home_screen.dart';
import 'my_list_screen.dart';
import 'search_screen.dart';

class MainNavigatorScreen extends StatefulWidget {
  const MainNavigatorScreen({super.key});

  @override
  State<MainNavigatorScreen> createState() => _MainNavigatorScreenState();
}

class _MainNavigatorScreenState extends State<MainNavigatorScreen> {
  int _selectedIndex = 0;

  final List<Widget> _buildScreen = [
    const HomeScreen(),
    const SearchScreen(),
    const MyListScreen(),
  ];

  void _onItemTaped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: NetflixColorPallete.black,
      body: _buildScreen.elementAt( _selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: NetflixColorPallete.mineShaft,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(
              Icons.home,
              color: NetflixColorPallete.grey,
            ),
            label: 'Home',
            activeIcon: Icon(
              Icons.home,
              color: NetflixColorPallete.cararra,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.search,
              color: NetflixColorPallete.grey,
            ),
            label: 'Search',
            activeIcon: Icon(
              Icons.search,
              color: NetflixColorPallete.cararra,
            ),
          ),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.playlist_play,
              color: NetflixColorPallete.grey,
            ),
            label: 'My List',
            activeIcon: Icon(
              Icons.playlist_play,
              color: NetflixColorPallete.cararra,
            ),
          ),
        ],
        selectedItemColor: NetflixColorPallete.cararra,
        unselectedItemColor: NetflixColorPallete.grey,
        currentIndex: _selectedIndex,
        onTap: _onItemTaped,
      ),
    );
  }
}
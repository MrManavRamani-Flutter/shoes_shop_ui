import 'package:flutter/material.dart';
import 'package:shoes_shop/views/favorite_screen.dart';
import 'package:shoes_shop/views/home_screen.dart';
import 'package:shoes_shop/views/reward_screen.dart';
import 'package:shoes_shop/views/welcome_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: 'welcome',
      routes: {
        'welcome': (context) => const WelcomeScreen(),
        'home': (context) => const HomeScreen(),
        '/': (context) => const ListScreen(),
        'reward': (context) => const RewardScreen(),
      },
    );
  }
}

class ListScreen extends StatefulWidget {
  const ListScreen({super.key});

  @override
  ListScreenState createState() => ListScreenState();
}

class ListScreenState extends State<ListScreen> {
  int _selectedIndex = 0; // Track the selected tab

  // List of widgets for each tab
  final List<Widget> _pages = [
    const HomeScreen(),
    const RewardScreen(),
    FavoriteScreen(),
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages[_selectedIndex], // Display the selected page
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            activeIcon: Icon(Icons.home, color: Colors.blue),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.card_giftcard),
            label: 'Reward',
            activeIcon: Icon(Icons.card_giftcard, color: Colors.blue),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorites',
            activeIcon: Icon(Icons.favorite, color: Colors.blue),
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.blue,
        onTap: _onItemTapped,
      ),
    );
  }
}

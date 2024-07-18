import 'package:flutter/material.dart';
import 'package:shoes_shop/views/home_screen.dart';
import 'package:shoes_shop/views/welcome_screen.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        'welcome': (context) => const WelcomeScreen(),
        '/': (context) => const HomeScreen(),
      },
    );
  }
}

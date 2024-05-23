import 'package:flutter/material.dart';

import './pages/home_page.dart';
import './pages/auth_page.dart';
import './pages/profileBuild_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Chugli',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurpleAccent),
        primaryColor: Colors.deepPurpleAccent,
        secondaryHeaderColor: Colors.deepPurpleAccent.shade100,
        useMaterial3: true,
      ),
      // home: const HomePage(),
      routes: {
        "/home": (context) => const HomePage(),
        "/": (context) => const AuthPage(),
        "/profileBuild": (context) => const ProfileBuildPage()
      },
    );
  }
}

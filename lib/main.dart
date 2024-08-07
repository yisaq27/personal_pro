import 'package:flutter/material.dart';
import 'package:project/navbar.dart';
import 'package:project/pages/home_page.dart';
import 'package:project/pages/main_page.dart';
// import 'package:sidebar/Navbar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
   return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.blue,
        ),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        '/login':(context) => const HomePage(),
        '/main':(context) => const Mainpage(),
      },
    );
  }
}

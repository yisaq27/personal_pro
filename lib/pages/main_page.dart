import 'package:flutter/material.dart';
import 'package:project/Navbar.dart';

class Mainpage extends StatelessWidget {
  const Mainpage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Main Page'),
      ),
      drawer: const navbar(),
      body: const Center(
        child: Icon(
          Icons.web,
          size: 72,
        ),
      ),
    );
  }
}

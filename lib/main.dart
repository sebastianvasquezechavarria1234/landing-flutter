import 'package:flutter/material.dart';
import 'navBar.dart';
import 'hero.dart';
import 'products.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false, // Quita la etiqueta de debug
      home: Scaffold(
        backgroundColor: const Color(0xFFF5F6FA),
        body: Padding(
          padding: const EdgeInsets.only(left: 20, right: 20),
          child: SingleChildScrollView(  // 👈 Esto habilita el scroll
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start, // opcional
              children: [
                NavBar(),
                HeroSection(),
                Products(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

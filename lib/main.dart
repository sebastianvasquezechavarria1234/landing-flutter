// import 'package:actividad_imagen_sebastian_medina/column.dart';
import 'package:flutter/material.dart';
import 'store.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(body: Store()),
    );
  }
}

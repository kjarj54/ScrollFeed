import 'package:flutter/material.dart';
import 'package:scrollfeed/screens/home.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      checkerboardRasterCacheImages: false,
      debugShowMaterialGrid: false,
      title: 'Infinity Scroll App',
      home: HomeScreen()
    );
  }
}

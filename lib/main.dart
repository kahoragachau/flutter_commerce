import 'package:flutter/material.dart';
import 'package:flutter_commerce/screens/home/home.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.pinkAccent)
      ),
      home: const HomeScreen(),
    );
  }
}

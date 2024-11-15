import 'package:flutter/material.dart';
import 'package:dream_catcher/screens/dream_list/dream_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Dream Catcher',
      debugShowCheckedModeBanner: false,
      home: DreamList(),
    );
  }
}

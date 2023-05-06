import 'package:flutter/material.dart';
import 'package:hexagram/initial_screens/initial_screen.dart';
import 'package:hexagram/responsive/layout_screen.dart';
import 'package:hexagram/screens/post_screen.dart';
import 'package:hexagram/screens/search_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: PostScreen(),
    );
  }
}

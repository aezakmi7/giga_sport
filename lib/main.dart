import 'package:flutter/material.dart';
import 'package:giga_sport_flutter/screens/homepage_navigation.dart';
import 'package:giga_sport_flutter/utilities/constants.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: myTheme,
      debugShowCheckedModeBanner: false,
      home: const HomePageScreen(),
    );
  }
}

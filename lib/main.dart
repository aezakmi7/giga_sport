import 'package:firebase_core/firebase_core.dart';
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
    return FutureBuilder(
      // Initialize FlutterFire
      future: Firebase.initializeApp(),
      builder: (context, snapshot) {
        // Check for errors
        if (snapshot.hasError) {
          return Text('Something went wrong');
        }

        // Once complete, show your application
        if (snapshot.connectionState == ConnectionState.done) {
          return MaterialApp(
            theme: myTheme,
            debugShowCheckedModeBanner: false,
            home: const HomePageScreen(),
          );
        }

        // Otherwise, show something whilst waiting for initialization to complete
        return const CircularProgressIndicator();
      },
    );
  }
}

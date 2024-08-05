import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

var myTheme = ThemeData(
  brightness: Brightness.dark,
  fontFamily: GoogleFonts.roboto().fontFamily,
  textTheme: const TextTheme(
    bodyLarge: TextStyle(
      fontWeight: FontWeight.bold,
    ),
    bodyMedium: TextStyle(
      fontWeight: FontWeight.bold,
    ),
    bodySmall: TextStyle(
      fontWeight: FontWeight.bold,
    ),
  ),
  elevatedButtonTheme: ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      backgroundColor: Colors.redAccent,
      foregroundColor: Colors.white,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(30),
      ),
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    selectedItemColor: Colors.redAccent,
    unselectedItemColor: Colors.white,
  ),
);

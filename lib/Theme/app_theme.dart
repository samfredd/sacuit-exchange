import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppThemes {
  static final lightTheme = ThemeData(
    primaryColor: Colors.white, // Main theme color
    hintColor: const Color(0xFF800080), // Accent color
    scaffoldBackgroundColor: Colors.white,
    primaryColorDark: Colors.black,
    // Secondary background color

    textTheme: GoogleFonts.salsaTextTheme(
      // Using Lato as an example
      const TextTheme(
        bodyLarge: TextStyle(color: Colors.black87), // Primary text color
        bodyMedium: TextStyle(color: Color(0xFF555555)), // Secondary text color
        displayLarge: TextStyle(color: Color(0xFF00FFFF)), // Accent text color
        displayMedium:
            TextStyle(color: Color(0xFFADD8E6)), // Another accent text color
      ),
    ),
  );

  static final darkTheme = ThemeData(
    primaryColor: const Color(0xFF121212), // Main theme color
    hintColor: const Color(0xFF800080), // Accent color
    scaffoldBackgroundColor:
        const Color(0xFF121212), // Primary background color
    primaryColorDark: Colors.white,

    textTheme: GoogleFonts.salsaTextTheme(
      // Using Lato as an example
      const TextTheme(
        bodyLarge: TextStyle(color: Colors.white), // Primary text color
        bodyMedium: TextStyle(color: Color(0xFFBDBDBD)), // Secondary text color
        displayLarge: TextStyle(color: Color(0xFF00FFFF)), // Accent text color
        displayMedium:
            TextStyle(color: Color(0xFFADD8E6)), // Another accent text color
      ),
    ),
  );
}

import 'package:flutter/material.dart';

class AppColors {
  static const Color primary = Color(0xFF438883);
  static const Color primaryDarker = Color(0xFF1B5C58);
  static const Color onPrimary = Colors.white;
  static const Color secondary = Color(0xFF438883);
  static const Color onSecondary = Colors.white70;
  static const Color background = Colors.white;
  static const Color onBackground = Colors.black;
  static const Color error = Color(0xFFF95B51);
  static const Color onError = Colors.white;
  static const Color surface = Color(0xFF438883);
  static const Color onSurface = Colors.white;

  ThemeData toTheme() {
    return ThemeData.from(
      textTheme: toTextTheme(),
        colorScheme: const ColorScheme(
            brightness: Brightness.light,
            primary: primary,
            onPrimary: onPrimary,
            secondary: secondary,
            onSecondary: onSecondary,
            error: error,
            onError: onError,
            background: background,
            onBackground: onBackground,
            surface: surface,
            onSurface: onSurface),
        useMaterial3: true);
  }

  TextTheme toTextTheme(){
    return const TextTheme(
        displayLarge: TextStyle(
            fontFamily:'Roboto'
        ),
      displayMedium: TextStyle(
          fontFamily:'Roboto'
      ),
      displaySmall: TextStyle(
          fontFamily:'Roboto'
      ),
      headlineLarge: TextStyle(
          fontFamily:'Roboto'
      ),
      headlineMedium: TextStyle(
          fontFamily:'Roboto'
      ),
      headlineSmall: TextStyle(
          fontFamily:'Roboto'
      ),
      titleLarge: TextStyle(
          fontFamily:'Roboto'
      ),
      titleMedium: TextStyle(
          fontFamily:'Roboto'
      ),
      titleSmall: TextStyle(
          fontFamily:'Roboto'
      ),
      labelLarge: TextStyle(
          fontFamily:'Roboto'
      ),
      labelMedium: TextStyle(
          fontFamily:'Roboto'
      ),
    );
  }
}

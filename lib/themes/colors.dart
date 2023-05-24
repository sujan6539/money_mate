import 'package:flutter/material.dart';

class AppColors {
  final Color primary = const Color(0xFF438883);
  final Color onPrimary = Colors.white;
  final Color secondary = const Color(0xFF438883);
  final Color onSecondary = Colors.white70;
  final Color background = Colors.black;
  final Color onBackground = Colors.black;
  final Color error = const Color(0xFFF95B51);
  final Color onError = Colors.white;
  final Color surface = const Color(0xFF438883);
  final Color onSurface = Colors.white;

  ThemeData toTheme() {
    return ThemeData.from(
      textTheme: toTextTheme(),
        colorScheme: ColorScheme(
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

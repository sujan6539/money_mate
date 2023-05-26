import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppColors {
  static const Color primary = Color(0xFF438883);
  static const Color primaryDarker = Color(0xFF1B5C58);
  static const Color onPrimary = Colors.white;
  static const Color secondary = Color(0xFF438883);
  static const Color onSecondary = Colors.white70;
  static const Color background = Color(0xFFE5E5E5);
  static const Color onBackground = Colors.black;
  static const Color error = Color(0xFFF95B51);
  static const Color onError = Colors.white;
  static const Color surface = Color(0xFF438883);
  static const Color onSurface = Colors.white;
  static const Color dbBalanceColor = Color(0xFF25A969);

  ThemeData toTheme() {
    return ThemeData.from(
        textTheme: toTextTheme(),
        colorScheme: const ColorScheme(
            brightness: Brightness.dark,
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

  TextTheme toTextTheme() {
    return GoogleFonts.interTextTheme().copyWith(
        titleMedium: GoogleFonts.inter()
            .copyWith(color: Colors.black, fontWeight: FontWeight.bold));
  }
}

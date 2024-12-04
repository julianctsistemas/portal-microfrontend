import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData get lightTheme {
    return ThemeData(
      primaryColor: Colors.blue,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        secondary: Colors.amber, // Reemplazo para `accentColor`
      ),
      fontFamily: 'Roboto',
    );
  }

  static ThemeData get darkTheme {
    return ThemeData.dark().copyWith(
      colorScheme: const ColorScheme.dark().copyWith(
        secondary: Colors.amber, // Color para temas oscuros.
      ),
    );
  }
}

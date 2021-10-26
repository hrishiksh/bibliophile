import 'package:flutter/material.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: Colors.white,
      foregroundColor: Color(0xFF444444),
    ),
    textTheme: const TextTheme(
      headline6: TextStyle(
        fontFamily: "Lora",
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Color(0xFF444444),
      ),
    ),
  );
}

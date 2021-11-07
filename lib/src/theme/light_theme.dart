import 'package:flutter/material.dart';

ThemeData lightTheme(BuildContext context) {
  return ThemeData.light().copyWith(
    primaryColor: const Color(0xFFFFD23F),
    appBarTheme: const AppBarTheme(
      elevation: 0,
      color: Colors.white,
      foregroundColor: Color(0xFF444444),
    ),
    textTheme: const TextTheme(
      headline5: TextStyle(
        fontFamily: "Lora",
        fontSize: 23,
        fontWeight: FontWeight.w900,
        color: Color(0xFF444444),
      ),
      headline6: TextStyle(
        fontFamily: "Lora",
        fontSize: 20,
        fontWeight: FontWeight.bold,
        color: Color(0xFF444444),
      ),
      bodyText1: TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.w500,
        color: Color(0xFF444444),
      ),
      bodyText2: TextStyle(
        fontSize: 16,
        fontFamily: "Lora",
        fontWeight: FontWeight.w700,
        color: Color(0xFF8E8E8E),
      ),
      subtitle2: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
        color: Color(0xFF444444),
      ),
      button: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.w500,
        color: Color(0xFF444444),
      ),
      caption: TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.normal,
        fontFamily: "Lora",
        height: 1.5,
        color: Color(0xFF444444),
      ),
    ),
  );
}

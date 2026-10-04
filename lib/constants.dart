import 'package:flutter/material.dart';

// Светлая и тёмная темы приложения, цвета и стили текста задаются здесь
ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,

  primaryColor: const Color(0xFF285430),
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: const Color(0xFFEAE9E1),
  cardColor: Colors.white,
  shadowColor: Color(0xFFEAE9E1),

  iconButtonTheme: IconButtonThemeData(
    style: IconButton.styleFrom(
      backgroundColor: Colors.white, // Здесь обычный Color работает официально
    ),
  ),

  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      minimumSize: const Size(double.infinity, 50), 
    ),
  ),

  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.amber,
    foregroundColor: Colors.blue,
  ),

  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF285430),
    brightness: Brightness.light,
    primary: const Color(0xFF285430),
    onPrimary: Colors.white,
  ),

  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontSize: 16,
      color: Color(0xFF1A1D1A),
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Color(0xFF7A827A),
    ),
    headlineLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: TextStyle(
      fontSize: 16,
      color: Color(0xFFF9F8F3),
      fontWeight: FontWeight.w600
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Color(0xFF1A1D1A),
    ),
  ),
);

ThemeData darkTheme = ThemeData(
  brightness: Brightness.dark,

  primaryColor: const Color(0xFF285430),
  primarySwatch: Colors.blue,
  scaffoldBackgroundColor: const Color(0xFF101A12),
  cardColor: Color.fromARGB(255, 20, 42, 24),
  shadowColor: const Color(0xFF0A0F0B),

  appBarTheme: const AppBarTheme(
    backgroundColor: Colors.amber,
    foregroundColor: Colors.blue,
  ),

  colorScheme: ColorScheme.fromSeed(
    seedColor: const Color(0xFF285430),
    brightness: Brightness.dark,
    primary: const Color(0xFF285430),
    onPrimary: Colors.white,
  ),

  iconButtonTheme: IconButtonThemeData(
    style: IconButton.styleFrom(
      backgroundColor: const Color.fromARGB(255, 20, 42, 24), // Здесь обычный Color работает официально
    ),
  ),

  filledButtonTheme: FilledButtonThemeData(
    style: FilledButton.styleFrom(
      minimumSize: const Size(double.infinity, 50), 
    ),
  ),

  textTheme: const TextTheme(
    bodyMedium: TextStyle(
      fontSize: 16,
      color: Colors.white,
    ),
    bodySmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.w500,
      color: Colors.grey,
    ),
    headlineLarge: TextStyle(
      fontSize: 24,
      fontWeight: FontWeight.w700,
    ),
    displayMedium: TextStyle(
      fontSize: 16,
      color: Color(0xFFF9F8F3),
      fontWeight: FontWeight.w600
    ),
    titleSmall: TextStyle(
      fontSize: 14,
      fontWeight: FontWeight.bold,
      color: Colors.white,
    ),
  ),
);
import 'package:flutter/material.dart';

const Color seedColor = Colors.white;

// Light Theme based on the seed color
final ThemeData lightTheme = ThemeData(
  colorScheme:
      ColorScheme.fromSeed(seedColor: seedColor, brightness: Brightness.light),
  useMaterial3: true,
  textTheme: Typography.blackMountainView,
  appBarTheme: AppBarTheme(
    backgroundColor:
        ColorScheme.fromSeed(seedColor: seedColor, brightness: Brightness.light)
            .primary,
    foregroundColor:
        ColorScheme.fromSeed(seedColor: seedColor, brightness: Brightness.light)
            .onPrimary,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor:
        ColorScheme.fromSeed(seedColor: seedColor, brightness: Brightness.light)
            .primary,
  ),
);

// Dark Theme based on the seed color
final ThemeData darkTheme = ThemeData(
  colorScheme:
      ColorScheme.fromSeed(seedColor: seedColor, brightness: Brightness.dark),
  useMaterial3: true,
  textTheme: Typography.whiteMountainView,
  appBarTheme: AppBarTheme(
    backgroundColor:
        ColorScheme.fromSeed(seedColor: seedColor, brightness: Brightness.dark)
            .primary,
    foregroundColor:
        ColorScheme.fromSeed(seedColor: seedColor, brightness: Brightness.dark)
            .onPrimary,
  ),
  floatingActionButtonTheme: FloatingActionButtonThemeData(
    backgroundColor:
        ColorScheme.fromSeed(seedColor: seedColor, brightness: Brightness.dark)
            .primary,
  ),
);

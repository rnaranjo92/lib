import 'package:flutter/material.dart';

import 'package:expense_tracker/expenses.dart';

var kColorScheme = ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 200, 149, 251));

var kDarkColorScheme = ColorScheme.fromSeed(
  brightness: Brightness.dark,
  seedColor: const Color.fromARGB(255, 5, 99, 125));

void main() {
    runApp(
    MaterialApp(
      darkTheme: ThemeData.dark().copyWith(
        colorScheme: kDarkColorScheme,
        cardTheme: CardTheme().copyWith(
            color: kDarkColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)
          ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            backgroundColor: kDarkColorScheme.primaryContainer,
            foregroundColor: kDarkColorScheme.onPrimaryContainer,
          ), 
        ),
      ),
      theme: ThemeData().copyWith(
          colorScheme: kColorScheme,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kColorScheme.onPrimaryContainer,
            foregroundColor: kColorScheme.primaryContainer
          ),
          cardTheme: CardTheme().copyWith(
            color: kColorScheme.secondaryContainer,
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)
          ),
          elevatedButtonTheme: ElevatedButtonThemeData(
            style: ElevatedButton.styleFrom(
              backgroundColor: kColorScheme.primaryContainer,
            ), 
          ),
          textTheme: ThemeData().textTheme.copyWith(
            titleLarge: TextStyle(
              fontWeight: FontWeight.bold,
              color: kColorScheme.onSecondaryContainer,
              fontSize: 17,
            ),
          )
        ),
      themeMode: ThemeMode.dark,
      home: const Expenses(),
    ),
  );
}
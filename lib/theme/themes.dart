import 'package:flutter/material.dart';

class AppTheme{
  static const Color primario = Colors.blueGrey;
  static final ThemeData light = ThemeData.light().copyWith(
    appBarTheme: const AppBarTheme(
      backgroundColor: primario,
      elevation: 10,
    ),

    iconTheme: const IconThemeData(color: primario),

    inputDecorationTheme: const InputDecorationTheme(
      floatingLabelStyle: TextStyle(color: primario),
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primario),
      ),
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: primario),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
            backgroundColor: primario,
            shape: const StadiumBorder(),
            elevation: 10)),
  );
}
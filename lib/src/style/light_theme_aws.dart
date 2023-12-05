import 'package:flutter/material.dart';
import 'package:awsome_tools/src/constants/constant_values_awsome.dart';

final lightThemeAws = ThemeData(
  snackBarTheme: const SnackBarThemeData(
    backgroundColor: Color(0xFFFAFAFA),
    contentTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  ),
  dialogTheme: const DialogTheme(
    backgroundColor: Color(0xFFFAFAFA),
    shape: RoundedRectangleBorder(
      borderRadius: defaultBorderRadiusAws,
    ),
  ),
  useMaterial3: true,
  primaryColor: const Color.fromARGB(255, 19, 193, 100),
  scaffoldBackgroundColor: const Color(0xFFFAFAFA),
  appBarTheme: const AppBarTheme(
    color: Color(0xFFFAFAFA),
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.black),
    titleTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  cardTheme: const CardTheme(
    color: Colors.white,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: defaultBorderRadiusAws,
    ),
  ),
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color(0xFFFAFAFA),
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.black54,
  ),
);

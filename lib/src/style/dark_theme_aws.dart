import 'package:flutter/material.dart';
import 'package:awsome_tools/src/constants/constant_values_awsome.dart';

const primaryDarkColor = Color.fromRGBO(22, 183, 97, 1);
const scfDarkColor = Color.fromRGBO(15, 18, 40, 1.000);
const cardDarkColor = Color.fromRGBO(40, 45, 79, 1.000);
//
final darkThemeAws = ThemeData(
  useMaterial3: true,
  primaryColor: primaryDarkColor,
  scaffoldBackgroundColor: scfDarkColor,
  appBarTheme: const AppBarTheme(
    color: scfDarkColor,
    elevation: 0,
    iconTheme: IconThemeData(color: Colors.white),
    titleTextStyle: TextStyle(
      color: Colors.white,
      fontSize: 20,
      fontWeight: FontWeight.bold,
    ),
  ),
  textTheme: const TextTheme(),
  cardColor: cardDarkColor,
  cardTheme: const CardTheme(
    color: cardDarkColor,
    elevation: 0,
    shape: RoundedRectangleBorder(
      borderRadius: defaultBorderRadiusAws,
    ),
  ),
  //! SnackBarThemeData
  snackBarTheme: const SnackBarThemeData(
    backgroundColor: Color.fromRGBO(22, 44, 70, 1.000),
    contentTextStyle: TextStyle(
      color: Colors.black,
      fontSize: 16,
      fontWeight: FontWeight.bold,
    ),
  ),
  //! DialogTheme
  dialogTheme: const DialogTheme(
    backgroundColor: Color.fromRGBO(22, 44, 70, 1.000),
    shape: RoundedRectangleBorder(
      borderRadius: defaultBorderRadiusAws,
    ),
  ),
  // DialogTheme
  bottomNavigationBarTheme: const BottomNavigationBarThemeData(
    backgroundColor: Color.fromRGBO(44, 49, 82, 1.000),
    selectedItemColor: Colors.black,
    unselectedItemColor: Colors.black54,
  ),
  //! showModalBottomSheet
  bottomSheetTheme: const BottomSheetThemeData(
    backgroundColor: cardDarkColor,
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.only(
        topLeft: Radius.circular(20),
        topRight: Radius.circular(20),
      ),
    ),
  ),
);

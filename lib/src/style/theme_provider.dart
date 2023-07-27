// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'dark_theme.dart';
// import 'light_theme.dart';

// final themeProvider = ChangeNotifierProvider((_) => ThemeProvider());

// class ThemeProvider extends ChangeNotifier {
//   ThemeProvider() {
//     _getTheme();
//   }

//   late ThemeData themeData = ThemeData(useMaterial3: true);

//   bool isDark = false;
//   //
//   void flagThemeMode() async {
//     isDark = !isDark;
//     if (isDark) {
//       themeData = darkTheme;
//     } else {
//       themeData = lightTheme;
//     }
//     // await saveTheme();
//     notifyListeners();
//   }

//   void _getTheme() async {
//     // isDark = await getThemeFromPrefs();
//     if (isDark) {
//       themeData = darkTheme;
//     } else {
//       themeData = lightTheme;
//     }
//     notifyListeners();
//   }

//   // Future<void> saveTheme() async => await themeLocalDataSource.saveData(isDark);
//   // Future<bool> getThemeFromPrefs() async => await themeLocalDataSource.getData;
// }

import 'package:flutter/material.dart';

enum ThemeType {
  light,
  dark,
}

class CustomThemeData {
  static ThemeData customTheme({
    ThemeType themeType = ThemeType.light,
    Color? customPrimaryColor,
    Color? customAccentColor,
    double? customFontSize,
    // Add more custom properties as needed
  }) {
    final brightness =
        themeType == ThemeType.dark ? Brightness.dark : Brightness.light;

    return ThemeData(
      brightness: brightness,
      primaryColor: customPrimaryColor ??
          (themeType == ThemeType.dark ? Colors.blue : Colors.orange),
      // accentColor: customAccentColor ?? (themeType == ThemeType.dark ? Colors.orange : Colors.blue),
      textTheme: const TextTheme().apply(
        bodyColor: brightness == Brightness.dark ? Colors.white : Colors.black,
        displayColor:
            brightness == Brightness.dark ? Colors.white : Colors.black,
      ),
      // Add more theme properties as needed
    );
  }
}

class IconChangeTheme extends StatefulWidget {
  const IconChangeTheme({super.key});

  @override
  State<IconChangeTheme> createState() => _MyAppState();
}

class _MyAppState extends State<IconChangeTheme> {
  ThemeType _currentThemeType = ThemeType.light;

  void _toggleTheme() {
    setState(() {
      _currentThemeType = _currentThemeType == ThemeType.light
          ? ThemeType.dark
          : ThemeType.light;
    });
  }

  @override
  Widget build(BuildContext context) {
    final themeData = CustomThemeData.customTheme(
      themeType: _currentThemeType,
      customPrimaryColor: Colors.blue,
      customAccentColor: Colors.orange,
      customFontSize: 20.0,
    );

    return IconButton(
      onPressed: _toggleTheme,
      icon: Icon(
        _currentThemeType == ThemeType.light
            ? Icons.light_mode
            : Icons.dark_mode,
      ),
    );
  }
}

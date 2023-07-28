import 'package:flutter/material.dart';

extension CustomThemeData on ThemeData {
  static ThemeData customTheme({
    bool isDarkTheme = false,
    Color? customPrimaryColor,
    Color? customAccentColor,
    double? customFontSize,
    // Add more custom properties as needed
  }) {
    final brightness = isDarkTheme ? Brightness.dark : Brightness.light;
    return ThemeData(
      brightness: brightness,
      primaryColor:
          customPrimaryColor ?? (isDarkTheme ? Colors.blue : Colors.orange),
      textTheme: TextTheme(
        displayLarge: TextStyle(fontSize: customFontSize ?? 20.0),
        // Add more text styles as needed
      ).apply(
        bodyColor: brightness == Brightness.dark ? Colors.white : Colors.black,
        displayColor:
            brightness == Brightness.dark ? Colors.white : Colors.black,
      ),
      colorScheme: ColorScheme.fromSwatch().copyWith(
          secondary:
              customAccentColor ?? (isDarkTheme ? Colors.orange : Colors.blue)),
      // Add more theme properties as needed
    );
  }
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    final lightTheme = CustomThemeData.customTheme(
      isDarkTheme: false,
      customPrimaryColor: Colors.blue,
      customAccentColor: Colors.orange,
      customFontSize: 20.0,
    );

    final darkTheme = CustomThemeData.customTheme(
      isDarkTheme: true,
      customPrimaryColor: Colors.blue,
      customAccentColor: Colors.orange,
      customFontSize: 20.0,
    );

    return MaterialApp(
      // Use light theme
      theme: lightTheme,
      // Use dark theme
      darkTheme: darkTheme,
      home: Scaffold(
        appBar: AppBar(title: const Text('Custom Theme Example')),
        body: Center(
          child: Text(
            'Custom Theme Example',
            style: Theme.of(context).textTheme.displayLarge,
          ),
        ),
      ),
    );
  }
}

enum ThemeType {
  light,
  dark,
}

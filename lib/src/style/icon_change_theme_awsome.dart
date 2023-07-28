import 'package:flutter/material.dart';

class IconChangeThemeAwsome extends StatefulWidget {
  const IconChangeThemeAwsome({super.key});

  @override
  State<IconChangeThemeAwsome> createState() => _IconChangeThemeAwsomeState();
}

class _IconChangeThemeAwsomeState extends State<IconChangeThemeAwsome> {
  @override
  Widget build(BuildContext context) {
    // Access the theme data from the InheritedWidget
    // final theme = ThemeProviderAwsome.of(context).theme;
    return IconButton(
      onPressed: () {},
      icon: const Icon(Icons.brightness_4), // Toggle theme icon (moon icon)
    );
  }

  // Toggle the theme mode when the FAB is pressed
  // void _toggleTheme(ThemeProviderAwsome theme) {
  //   if (theme.theme) {}
  //   setState(() {});
  // }
}

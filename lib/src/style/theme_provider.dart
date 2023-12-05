import 'package:flutter/material.dart';

class ThemeNotifier extends InheritedWidget {
  const ThemeNotifier({
    super.key,
    required this.isDarkMode,
    required this.toggleTheme,
    required Widget child,
  }) : super(child: child);

  final bool isDarkMode;
  final void Function() toggleTheme;

  static ThemeNotifier of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<ThemeNotifier>() ??
        ThemeNotifier(
          isDarkMode: false,
          toggleTheme: () {},
          child: const SizedBox(),
        );
  }

  @override
  bool updateShouldNotify(ThemeNotifier oldWidget) {
    return isDarkMode != oldWidget.isDarkMode;
  }
}

class IconChangeTheme extends StatelessWidget {
  const IconChangeTheme({super.key});
  @override
  Widget build(BuildContext context) {
    final themeNotifier = ThemeNotifier.of(context);
    final isDark = themeNotifier.isDarkMode;
    final icon = isDark ? Icons.brightness_7 : Icons.brightness_4;
    return IconButton(onPressed: themeNotifier.toggleTheme, icon: Icon(icon));
  }
}

class ThemeProvider extends StatefulWidget {
  final Widget child;
  const ThemeProvider({super.key, required this.child});
  @override
  ThemeProviderState createState() => ThemeProviderState();
}

class ThemeProviderState extends State<ThemeProvider> {
  bool _isDarkMode = false;
  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return ThemeNotifier(
      isDarkMode: _isDarkMode,
      toggleTheme: toggleTheme,
      child: widget.child,
    );
  }
}

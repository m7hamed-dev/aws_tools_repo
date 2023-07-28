import 'package:flutter/material.dart';

extension ScreenSizeAwsome on BuildContext {
  Size get size => MediaQuery.of(this).size;
  bool get isMobileLayout => size.width < 600;
  bool get isTabletLayout => size.width >= 600 && size.width < 1200;
  bool get isWebLayout => size.width >= 1200;
}

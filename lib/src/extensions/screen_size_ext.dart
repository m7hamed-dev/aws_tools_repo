import 'package:flutter/material.dart';

enum ScreenTypes { mobile, tablet, web }

extension ScreenSizeAwsome on BuildContext {
  Size get size => MediaQuery.of(this).size;
  double get width => size.width;
  double get height => size.height;
  bool get isMobileLayout => size.width < 600;
  bool get isTabletLayout => size.width >= 600 && size.width < 1200;
  bool get isWebLayout => size.width >= 1200;
  ScreenTypes get screenType {
    if (isMobileLayout) {
      return ScreenTypes.mobile;
    }
    if (isTabletLayout) {
      return ScreenTypes.tablet;
    }
    return ScreenTypes.web;
  }
}

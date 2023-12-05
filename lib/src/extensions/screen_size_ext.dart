import 'package:flutter/material.dart';
import 'package:awsome_tools/src/extensions/enhance_print.dart';

enum ScreenTypes { mobile, tablet, web }

extension ScreenSizeAwsome on BuildContext {
  //
  Size get size => MediaQuery.sizeOf(this);
  //
  double get width => size.width;
  //
  double get height => size.height;
  //
  bool get isMobileLayout => size.width < 600;
  //
  bool get isTabletLayout => size.width >= 600 && size.width < 1200;
  //
  bool get isWebLayout => size.width >= 1200;

  /// screen Types [ Mobile , Tablet , others ]
  ScreenTypes get screenType {
    if (isMobileLayout) {
      'current platform is [ Mobile ]'.enhancePrint;
      return ScreenTypes.mobile;
    }
    if (isTabletLayout) {
      'current platform is [ Tablet ]'.enhancePrint;
      return ScreenTypes.tablet;
    }
    'current platform is [ Web ]'.enhancePrint;
    return ScreenTypes.web;
  }
}

import 'package:awsome_tools/awsome_tools.dart';
import 'package:flutter/material.dart';

class LightThemeAwsome {
  /// # lightTheme
  ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor:
          configAwsome.appColors.lightScaffoldBackgroundColor,
      primaryColor: configAwsome.appColors.primaryColor,
      // primaryColor: HexColor('#5cbba0'),
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.black),
        centerTitle: false,
        color: Colors.white,
        elevation: 0.0,
      ),

      ///
      drawerTheme: const DrawerThemeData(backgroundColor: Colors.white),

      ///
      dividerTheme: DividerThemeData(color: Colors.grey.shade300),
      // dividerTheme: DividerThemeData(color: HexColor('#f1eff9')),

      dialogTheme: const DialogTheme(
        backgroundColor: Colors.white,
        surfaceTintColor: Colors.white,
        elevation: 20.0,
        alignment: Alignment.center,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
      ),

      // bottom
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        // selectedLabelStyle: maraiMedium.copyWith(color: primaryColor),
        unselectedLabelStyle: regularStyle,
        selectedItemColor: configAwsome.appColors.primaryColor,
      ),

      ///bottomSheetTheme
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
      ),
      cardColor: Colors.white,
      // cardColor: Colors.grey.withOpacity(.11),

      /// text from filed theme
      inputDecorationTheme: InputDecorationTheme(
        helperStyle: regularStyle.copyWith(
          color: Colors.pink.withOpacity(.22),
        ),
        hintStyle: regularStyle.copyWith(color: Colors.grey),
        // labelStyle: maraiBlack.copyWith(color: Colors.green),
        errorStyle: regularStyle.copyWith(fontSize: 13.0),
        focusedBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(
            width: 1.5,
            color: configAwsome.appColors.darkScaffoldBackgroundColor,
          ),
        ),
        border: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(
            width: 0.5,
            color: configAwsome.appColors.primaryColor,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: const BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(
            width: 0.5,
            color: configAwsome.appColors.primaryColor,
          ),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(width: 1.0, color: Colors.red),
        ),
        outlineBorder: const BorderSide(width: 0.5, color: Colors.yellow),
        activeIndicatorBorder:
            const BorderSide(width: 10, color: Colors.yellow),
      ),
      pageTransitionsTheme: const PageTransitionsTheme(
        builders: {
          TargetPlatform.android: ZoomPageTransitionsBuilder(),
          TargetPlatform.iOS: ZoomPageTransitionsBuilder(),
          TargetPlatform.fuchsia: ZoomPageTransitionsBuilder(),
        },
      ),
    );
  }
}

import 'package:awsome_tools/src/style/app_colors.dart';
import 'package:flutter/material.dart';
import '../config/config_awsome.dart';

class LightThemeAwsome {
  // LightThemeAwsome({required this.con/figAwsome});
  // final ConfigAwsome configAwsome;

  /// # lightTheme
  ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.lightScaffoldBackgroundColor,
      primaryColor: AppColors.primaryColor,
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
        unselectedLabelStyle:
            configAwsome.textStyleAwsome.maraiRegular.copyWith(fontSize: 14.0),
        selectedItemColor: AppColors.primaryColor,
      ),

      ///bottomSheetTheme
      bottomSheetTheme: const BottomSheetThemeData(
        backgroundColor: Colors.white,
      ),
      cardColor: Colors.white,
      // cardColor: Colors.grey.withOpacity(.11),

      /// text from filed theme
      inputDecorationTheme: InputDecorationTheme(
        helperStyle: configAwsome.textStyleAwsome.maraiRegular.copyWith(
          color: Colors.pink.withOpacity(.22),
        ),
        hintStyle: configAwsome.textStyleAwsome.maraiRegular.copyWith(
          color: Colors.grey,
        ),
        // labelStyle: maraiBlack.copyWith(color: Colors.green),
        errorStyle: configAwsome.textStyleAwsome.maraiRegular.copyWith(
          fontSize: 13.0,
        ),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(width: 1.5, color: AppColors.primaryColor),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(width: 0.5, color: Colors.green),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(4.0)),
          borderSide: BorderSide(width: 0.5, color: Colors.black),
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

      ///
    );
  }
}

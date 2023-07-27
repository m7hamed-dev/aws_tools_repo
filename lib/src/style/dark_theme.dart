import 'package:awsome_tools/src/config/config_awsome.dart';
import 'package:awsome_tools/src/style/app_colors.dart';
import 'package:flutter/material.dart';

class DarkThemeAwsome {
  // DarkThemeAwsome({required this.configAwsome});
  // final ConfigAwsome configAwsome;
  ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      scaffoldBackgroundColor: AppColors.darkScaffoldBackgroundColor,
      iconTheme: const IconThemeData(color: Colors.white),

      // app
      appBarTheme: const AppBarTheme(
        iconTheme: IconThemeData(color: Colors.white),
        centerTitle: false,
        color: Colors.transparent,
        elevation: 0.0,
      ),

      // bottom
      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.darkScaffoldBackgroundColor,
        // selectedLabelStyle: maraiMedium.copyWith(
        //   fontSize: 10.0,
        //   color: HexColor('#5cbb9f'),
        // ),
        // selectedItemColor: HexColor('#5cbb9f'),
      ),

      ///bottomSheetTheme
      bottomSheetTheme: BottomSheetThemeData(
        backgroundColor: AppColors.darkScaffoldBackgroundColor,
      ),

      ///
      dividerTheme: DividerThemeData(color: Colors.white.withOpacity(.22)),
      // dividerTheme: DividerThemeData(color: HexColor('#322e40')),
      ///
      cardColor: AppColors.darkScaffoldBackgroundColor,

      /// text form
      inputDecorationTheme: InputDecorationTheme(
        helperStyle: configAwsome.textStyleAwsome.maraiBlack.copyWith(
          color: Colors.white.withOpacity(.22),
        ),
        hintStyle: configAwsome.textStyleAwsome.maraiBlack
            .copyWith(color: Colors.white.withOpacity(.22)),
        //  hintStyle: maraiBold.copyWith(color: Colors.grey),
        labelStyle: configAwsome.textStyleAwsome.maraiBlack
            .copyWith(color: Colors.white),
        errorStyle: configAwsome.textStyleAwsome.maraiBlack,
        // prefixStyle: maraiRegular.copyWith(color: Colors.white),
        // suffixStyle: maraiRegular.copyWith(color: Colors.white),
        focusedBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(width: 2, color: Colors.teal),
        ),
        border: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(width: 1, color: Colors.green),
        ),
        enabledBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(width: 1, color: Colors.grey),
        ),
        errorBorder: const OutlineInputBorder(
          borderRadius: BorderRadius.all(Radius.circular(10.0)),
          borderSide: BorderSide(width: 2, color: Colors.red),
        ),
      ),

      ///
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

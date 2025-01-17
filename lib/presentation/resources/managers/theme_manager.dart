import 'package:appwritecrud/presentation/resources/managers/style_manager.dart';
import 'package:appwritecrud/presentation/resources/managers/values_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_manager.dart';
import 'font_manager.dart';

ThemeData getApplicationTheme() {
  return ThemeData(
    useMaterial3: false,
    //Main App Color
    primaryColor: ColorManager.primary,
    primaryColorLight: ColorManager.primaryOpacity70,
    colorScheme: ColorScheme.fromSwatch().copyWith(
      secondary: ColorManager.grey,
    ),
    canvasColor: Colors.transparent,
    //ripple color
    //splashColor: ColorManager.primaryOpacity70,
    //Card View Theme
    cardTheme: CardTheme(
      shadowColor: ColorManager.grey,
      elevation: AppSize.s4,
    ),
    scaffoldBackgroundColor: ColorManager.background,
    //App Bar Theme
    appBarTheme: AppBarTheme(
      elevation: AppSize.s4,
      titleTextStyle: regularStyle(
        color: ColorManager.primary,
        fontSize: FontSizeManager.s16.sp,
      ),
    ),

    //Button Theme
    buttonTheme: ButtonThemeData(
      shape: const StadiumBorder(),
      disabledColor: Colors.transparent,
      buttonColor: ColorManager.primary,
      splashColor: ColorManager.primaryOpacity70,
    ),

    // Elevated button theme
    elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
      // textStyle: regularStyle(
      //   color: ColorManager.black,
      //   fontSize: FontSizeManager.s16,
      //   fontFamily: FontManager.textFontFamily
      // ),
      disabledBackgroundColor: Colors.transparent,
      disabledForegroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      elevation: AppSize.s0,
      backgroundColor: Colors.transparent,
      //primary is deprecated
      shape: const StadiumBorder(),
    )),
    // Text theme
    textTheme: TextTheme(
      /// Titles [TextStyle]
      displayLarge: regularStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s20.sp,
      ),

      /// Numbers [TextStyle]
      displayMedium: boldStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s45.sp,
      ),
      displaySmall: regularStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s45.sp,
      ),
      headlineMedium: mediumStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s14.sp,
      ),
      headlineSmall: regularStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s12.sp,
      ),

      /// Text subTitles [TextStyle]

      titleMedium: regularStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s12.sp,
      ),

      /// Numbers subTitles [TextStyle]
      titleSmall: boldStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s20.sp,
      ),

      bodySmall: regularStyle(
        color: ColorManager.grey1,
      ),

      /// Body [TextStyle]

      bodyLarge: regularStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s16.sp,
      ),
    ),

    // input decoration theme (text form field)

    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: Colors.transparent,
      contentPadding: const EdgeInsets.only(
          left: AppPadding.p20,
          right: AppPadding.p20,
          top: AppPadding.p10,
          bottom: AppPadding.p10),
      // hint style
      hintStyle: regularStyle(
        color: ColorManager.grey,
        fontSize: FontSizeManager.s16.sp,
      ),

      // label style
      labelStyle: mediumStyle(
        color: ColorManager.wireFrameMainColor,
        fontSize: FontSizeManager.s16.sp,
      ),
      // error style
      errorStyle: regularStyle(
        color: ColorManager.wireFrameMainColor,
        fontSize: FontSizeManager.s12.sp,
      ),
      disabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.black,
          width: AppSize.s1,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s16,
          ),
        ),
      ),
      // enabled border
      enabledBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.black,
          width: AppSize.s0_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s12,
          ),
        ),
      ),

      // focused border
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.black,
          width: AppSize.s1_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s12,
          ),
        ),
      ),

      // error border
      errorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.error,
          width: AppSize.s0_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s12,
          ),
        ),
      ),
      // focused error border
      focusedErrorBorder: OutlineInputBorder(
        borderSide: BorderSide(
          color: ColorManager.error,
          width: AppSize.s0_5,
        ),
        borderRadius: const BorderRadius.all(
          Radius.circular(
            AppSize.s12,
          ),
        ),
      ),
    ),
  );

  //Input Decoration Theme
}

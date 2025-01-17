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
      disabledBackgroundColor: Colors.transparent,
      disabledForegroundColor: Colors.transparent,
      shadowColor: Colors.transparent,
      elevation: AppSize.s0,
      backgroundColor: ColorManager.primary,
      //primary is deprecated
      shape: const StadiumBorder(),
    )),
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

    listTileTheme: ListTileThemeData(
      tileColor: ColorManager.white,
      titleTextStyle: semiBoldStyle(
        color: ColorManager.black,
        fontSize: FontSizeManager.s16.sp,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(8))
      ),
    ),
  );

}

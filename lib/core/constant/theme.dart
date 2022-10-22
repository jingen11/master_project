import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

import 'app_dimensions.dart';
import 'colors.dart';

enum AppTheme {
  dark,
  light,
}

final Map<AppTheme, ThemeData> kAppThemeData = {
  AppTheme.dark: ThemeData.dark().copyWith(
    primaryColor: kDarkPrimary,
    scaffoldBackgroundColor: kDarkBg,
    backgroundColor: kDarkPlaceholder,
    canvasColor: kDarkCanvas,
    errorColor: kDarkError,
    useMaterial3: true,
    textTheme: GoogleFonts.ubuntuTextTheme(
      const TextTheme().copyWith(
        headline1: TextStyle(
          fontSize: 64.sp,
          color: kDarkTextColor,
        ),
        headline2: TextStyle(
          fontSize: 32.sp,
          color: kDarkTextColor,
        ),
        headline3: TextStyle(
          fontSize: 24.sp,
          color: kDarkTextColor,
          fontWeight: FontWeight.bold,
        ),
        headline4: TextStyle(
          fontSize: 24.sp,
          color: kDarkTextColor,
        ),
        headline5: TextStyle(
          fontSize: 20.sp,
          color: kDarkTextColor,
        ),
        headline6: TextStyle(
          fontSize: 16.sp,
          color: kDarkTextColor,
        ),
        bodyText1: TextStyle(
          fontSize: 12.sp,
          color: kDarkTextColor,
        ),
        bodyText2: TextStyle(
          fontSize: 14.sp,
          color: kDarkTextColor,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(0),
        minimumSize: MaterialStateProperty.all(
          Size(double.infinity, 56.h),
        ),
        shape: MaterialStateProperty.all(
          const StadiumBorder(),
        ),
        foregroundColor: MaterialStateProperty.all(
          kDarkTextColor,
        ),
        backgroundColor: MaterialStateProperty.all(
          kDarkPrimary,
        ),
        textStyle: MaterialStateProperty.all(
          TextStyle(
            fontSize: 16.sp,
            color: kDarkTextColor,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(kDarkPrimary),
        textStyle: MaterialStateProperty.all(
          TextStyle(
            fontSize: 16.sp,
            color: kDarkPrimary,
          ),
        ),
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kDarkBg,
      selectedItemColor: kDarkPrimary,
      selectedIconTheme: IconThemeData(
        color: kDarkPrimary,
        size: 24.sp,
      ),
      unselectedItemColor: kDarkPlaceholderText,
      unselectedIconTheme: IconThemeData(
        color: kDarkPlaceholderText,
        size: 24.sp,
      ),
    ),
    appBarTheme: AppBarTheme(
      elevation: 0,
      backgroundColor: Colors.transparent,
      toolbarHeight: 0,
      systemOverlayStyle: SystemUiOverlayStyle.light,
      iconTheme: const IconThemeData(
        color: kDarkTextColor,
      ),
      titleTextStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: kDarkTextColor,
      ),
      actionsIconTheme: const IconThemeData(
        color: kDarkTextColor,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData().copyWith(
      foregroundColor: kDarkTextColor,
      sizeConstraints: BoxConstraints.tightFor(
        width: 48.w,
        height: 48.w,
      ),
    ),
    colorScheme: const ColorScheme.dark().copyWith(
      background: kDarkPlaceholder,
      surface: kDarkPlaceholderText,
      primary: kDarkPrimary,
      secondary: kDarkAccent,
    ),
    timePickerTheme: TimePickerThemeData(
      backgroundColor: kDarkBg,
      shape: RoundedRectangleBorder(
        borderRadius: AppDimension().kCardBorderRadius,
      ),
    ),
    sliderTheme: SliderThemeData(
      inactiveTrackColor: kDarkCanvas,
      trackHeight: 2.h,
      showValueIndicator: ShowValueIndicator.onlyForContinuous,
      valueIndicatorColor: kDarkCanvas,
      valueIndicatorTextStyle: TextStyle(
        fontSize: 14.sp,
        color: kDarkTextColor,
      ),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: kDarkPlaceholder,
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: kDarkCanvas,
      shape: RoundedRectangleBorder(
        borderRadius: AppDimension().kCardBorderRadius,
      ),
    ),
  ),
  AppTheme.light: ThemeData.light().copyWith(
    primaryColor: kLightPrimary,
    scaffoldBackgroundColor: kLightBg,
    backgroundColor: kLightPlaceholder,
    canvasColor: kLightCanvas,
    errorColor: kLightError,
    splashColor: kLightPrimary.withOpacity(0.1),
    useMaterial3: true,
    textTheme: GoogleFonts.ubuntuTextTheme(
      const TextTheme().copyWith(
        headline1: TextStyle(
          fontSize: 64.sp,
          color: kLightTextColor,
        ),
        headline2: TextStyle(
          fontSize: 32.sp,
          color: kLightTextColor,
        ),
        headline3: TextStyle(
          fontSize: 24.sp,
          color: kLightTextColor,
          fontWeight: FontWeight.bold,
        ),
        headline4: TextStyle(
          fontSize: 24.sp,
          color: kLightTextColor,
        ),
        headline5: TextStyle(
          fontSize: 20.sp,
          color: kLightTextColor,
        ),
        headline6: TextStyle(
          fontSize: 16.sp,
          color: kLightTextColor,
        ),
        bodyText1: TextStyle(
          fontSize: 12.sp,
          color: kLightTextColor,
        ),
        bodyText2: TextStyle(
          fontSize: 14.sp,
          color: kLightTextColor,
        ),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(5),
        minimumSize: MaterialStateProperty.all(
          Size(double.infinity, 48.h),
        ),
        shape: MaterialStateProperty.all(
          const StadiumBorder(),
        ),
        foregroundColor: MaterialStateProperty.all(
          kLightBg,
        ),
        backgroundColor: MaterialStateProperty.all(
          kLightPrimary,
        ),
        textStyle: MaterialStateProperty.all(
          TextStyle(
            fontSize: 16.sp,
            color: kLightBg,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: ButtonStyle(
        foregroundColor: MaterialStateProperty.all(kLightPrimary),
        textStyle: MaterialStateProperty.all(
          TextStyle(
            fontSize: 14.sp,
            color: kLightPrimary,
          ),
        ),
      ),
    ),
    appBarTheme: AppBarTheme(
      systemOverlayStyle: SystemUiOverlayStyle.dark,
      elevation: 0,
      backgroundColor: Colors.transparent,
      toolbarHeight: 0,
      titleTextStyle: TextStyle(
        fontSize: 16.sp,
        fontWeight: FontWeight.bold,
        color: kDarkTextColor,
      ),
      iconTheme: const IconThemeData(
        color: kDarkTextColor,
      ),
      actionsIconTheme: const IconThemeData(
        color: kLightTextColor,
      ),
    ),
    bottomNavigationBarTheme: BottomNavigationBarThemeData(
      backgroundColor: kLightBg,
      selectedItemColor: kLightPrimary,
      selectedIconTheme: IconThemeData(
        color: kLightPrimary,
        size: 24.sp,
      ),
      unselectedItemColor: kLightPlaceholderText,
      unselectedIconTheme: IconThemeData(
        color: kLightPlaceholderText,
        size: 24.sp,
      ),
    ),
    floatingActionButtonTheme: const FloatingActionButtonThemeData().copyWith(
      foregroundColor: kDarkTextColor,
      sizeConstraints: BoxConstraints.tightFor(
        width: 48.w,
        height: 48.w,
      ),
    ),
    colorScheme: const ColorScheme.light().copyWith(
      background: kLightPlaceholder,
      surface: kLightPlaceholderText,
      primary: kLightPrimary,
      secondary: kLightAccent,
    ),
    timePickerTheme: TimePickerThemeData(
      backgroundColor: kLightBg,
      shape: RoundedRectangleBorder(
        borderRadius: AppDimension().kCardBorderRadius,
      ),
    ),
    sliderTheme: SliderThemeData(
      overlayShape: RoundSliderOverlayShape(
        overlayRadius: 12.sp,
      ),
      minThumbSeparation: 0,
      inactiveTrackColor: kLightCanvas,
      trackHeight: 2.h,
      showValueIndicator: ShowValueIndicator.onlyForContinuous,
      valueIndicatorColor: kLightCanvas,
      valueIndicatorTextStyle: TextStyle(
        fontSize: 14.sp,
        color: kLightTextColor,
      ),
      rangeThumbShape: RoundRangeSliderThumbShape(
        enabledThumbRadius: 8.sp,
      ),
      thumbShape: RoundSliderThumbShape(
        enabledThumbRadius: 8.sp,
      ),
    ),
    drawerTheme: const DrawerThemeData(
      backgroundColor: kLightPlaceholder,
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: kLightCanvas,
      shape: RoundedRectangleBorder(
        borderRadius: AppDimension().kCardBorderRadius,
      ),
    ),
  ),
};

import 'package:flutter/material.dart';
import 'package:scanner/core/constants/colors.dart';
import 'package:scanner/core/constants/dimens.dart';
import 'package:scanner/core/constants/styles.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.primaryColor,
      selectionColor: AppColors.primaryColor.withValues(alpha: 0.4),
      selectionHandleColor: AppColors.primaryColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      focusedBorder: OutlineInputBorder(
        borderSide: BorderSide(color: AppColors.primaryColor),
      ),
    ),

    brightness: Brightness.light,
    primaryColor: AppColors.primaryColor,
    fontFamily: 'Poppins',
    iconTheme: const IconThemeData(color: AppColors.blackColor),
    scaffoldBackgroundColor: AppColors.blackColor,
    textTheme: TextTheme(
      bodyLarge: TextStyle(
        color: AppColors.whiteColor,
        fontFamily: Styles.fontFamilyRegular,
      ),
      bodyMedium: TextStyle(
        color: AppColors.whiteColor,
        fontFamily: Styles.fontFamilyRegular,
      ),
      bodySmall: TextStyle(
        color: AppColors.whiteColor,
        fontFamily: Styles.fontFamilyRegular,
      ),
      titleLarge: TextStyle(
        color: AppColors.whiteColor,
        fontFamily: Styles.fontFamilyRegular,
      ),
      titleMedium: TextStyle(
        color: AppColors.whiteColor,
        fontFamily: Styles.fontFamilyRegular,
      ),
      titleSmall: TextStyle(
        color: AppColors.whiteColor,
        fontFamily: Styles.fontFamilyRegular,
      ),
    ),
    cardColor: AppColors.whiteColor,

    dialogBackgroundColor: AppColors.whiteColor,
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.whiteColor,
      ),
    ),
    sliderTheme: const SliderThemeData(
      activeTrackColor: AppColors.primaryColor,
      thumbColor: AppColors.primaryColor,
      overlayColor: AppColors.primaryColor,
    ),
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(4)),
      ),
      textStyle: TextStyle(
        color: AppColors.whiteColor,
        fontFamily: Styles.fontFamilyRegular,
      ),
    ),
  );

  static ThemeData darkTheme = ThemeData(
    textSelectionTheme: TextSelectionThemeData(
      cursorColor: AppColors.primaryColor,
      selectionColor: AppColors.primaryColor.withValues(alpha: 0.4),
      selectionHandleColor: AppColors.primaryColor,
    ),
    brightness: Brightness.dark,
    primaryColor: AppColors.primaryColor,
    fontFamily: Styles.fontFamilyRegular,
    iconTheme: const IconThemeData(color: AppColors.whiteColor),
    scaffoldBackgroundColor: AppColors.blackColor,
    textTheme: TextTheme(
      bodyLarge: Styles.whiteBold24,
      bodyMedium: Styles.whiteSemiBold15,
      bodySmall: Styles.whiteRegular13,
      titleLarge: Styles.whiteSemiBold15,
      titleMedium: Styles.whiteSemiBold15,
      titleSmall: Styles.whiteSemiBold15,
      displayLarge: Styles.whiteSemiBold15,
      displayMedium: Styles.whiteSemiBold15,
      displaySmall: Styles.whiteSemiBold15,
    ),
    cardColor: AppColors.blackColor,
    dialogBackgroundColor: AppColors.blackColor,

    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primaryColor,
        foregroundColor: AppColors.whiteColor,
      ),
    ),
    sliderTheme: const SliderThemeData(
      activeTrackColor: AppColors.primaryColor,
      thumbColor: AppColors.primaryColor,
      overlayColor: AppColors.primaryColor,
    ),
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: AppColors.primaryColor,
        borderRadius: BorderRadius.all(Radius.circular(Dimens.four)),
      ),
      textStyle: Styles.whiteRegular13.copyWith(fontSize: Dimens.ten),
    ),
  );

  static ThemeData calenderThemeData() => ThemeData(
    useMaterial3: false,
    datePickerTheme: DatePickerThemeData(
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(Dimens.twelve)),
      ),
    ),
    colorScheme: const ColorScheme.light(
      primary: AppColors.primaryColor,
      onSurface: AppColors.blackColor,
      onPrimary: AppColors.whiteColor,
    ),
  );
}
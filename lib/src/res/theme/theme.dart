import 'package:dewsclim/src/res/assets/svg/svg.dart';
import 'package:dewsclim/src/res/colors/colors.dart';
import 'package:dewsclim/src/res/styles/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AppTheme {
  const AppTheme._();

  static ThemeData get theme => ThemeData(
      primaryColor: AppColors.primary,
      colorScheme: AppColors.colorScheme,
      scaffoldBackgroundColor: Colors.white,
      actionIconTheme: ActionIconThemeData(
        backButtonIconBuilder: (BuildContext context) =>
            SvgPicture.asset(backButtonSvg),
      ),
      appBarTheme: const AppBarTheme(
        backgroundColor: Colors.white,
        elevation: 0,
        iconTheme: IconThemeData(color: AppColors.primary),
        actionsIconTheme: IconThemeData(color: AppColors.primary),
        titleTextStyle: TextStyle(
            color: AppColors.primary,
            fontSize: 18,
            fontWeight: FontWeight.w600),
      ),
      inputDecorationTheme: InputDecorationTheme(
        filled: false,
        fillColor: AppColors.neutral100,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(width: 1,color: AppColors.neutral300)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(width: 2,color: AppColors.primary)),
        errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(width: 1)),
        focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(width: 1)),
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(width: 1,color: AppColors.neutral300)),
        disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: const BorderSide(width: 1,color: AppColors.neutral100)),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16),
        hintStyle: AppStyles.bodyTextStyle.copyWith(fontSize: 14,
            color: AppColors.neutral400, fontWeight: FontWeight.w500),
      ),

      textButtonTheme: TextButtonThemeData(
          style: ButtonStyle(
        minimumSize:
            MaterialStateProperty.all(const Size(double.maxFinite, 50)),
        shape: WidgetStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      )),
      outlinedButtonTheme: OutlinedButtonThemeData(
          style: ButtonStyle(
        minimumSize:
            MaterialStateProperty.all(const Size(double.maxFinite, 50)),
        side: MaterialStateProperty.all(
            const BorderSide(color: AppColors.primary)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      )),
      filledButtonTheme: FilledButtonThemeData(
          style: ButtonStyle(
        minimumSize:
            MaterialStateProperty.all(const Size(double.maxFinite, 50)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      )),
      elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
        minimumSize:
            MaterialStateProperty.all(const Size(double.maxFinite, 50)),
        shape: MaterialStateProperty.all(
            RoundedRectangleBorder(borderRadius: BorderRadius.circular(8))),
      )),
      useMaterial3: true);
}

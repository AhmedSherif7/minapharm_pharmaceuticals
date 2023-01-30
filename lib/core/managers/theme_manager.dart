import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'color_manager.dart';
import 'size_manager.dart';

class ThemeManager {
  static ThemeData get lightTheme {
    return ThemeData(
      brightness: Brightness.light,
      scaffoldBackgroundColor: ColorManager.background,
      primaryColor: ColorManager.primary,
      colorScheme: ColorScheme.fromSwatch().copyWith(
        primary: ColorManager.primary,
        secondary: ColorManager.secondary,
        onPrimary: ColorManager.onPrimary,
        onSecondary: ColorManager.onSecondary,
      ),
      appBarTheme: AppBarTheme(
        backgroundColor: ColorManager.white,
        elevation: 1.0,
        centerTitle: true,
        titleTextStyle: TextStyle(
          fontSize: 20.sp,
          fontWeight: FontWeight.w600,
          color: ColorManager.primary,
        ),
        iconTheme: const IconThemeData(
          color: ColorManager.black,
        ),
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: ColorManager.white,
          statusBarIconBrightness: Brightness.dark,
        ),
      ),
      cardTheme: const CardTheme(
        color: ColorManager.white,
      ),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ButtonStyle(
          textStyle: MaterialStateProperty.all(
            const TextStyle(
              color: ColorManager.white,
            ),
          ),
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(
                AppRadius.borderRadius8,
              ),
            ),
          ),
        ),
      ),
      inputDecorationTheme: InputDecorationTheme(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(
            AppRadius.borderRadius12,
          ),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManager.primary,
            width: 2.0,
          ),
          borderRadius: BorderRadius.circular(
            AppRadius.borderRadius12,
          ),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: const BorderSide(
            color: ColorManager.black,
          ),
          borderRadius: BorderRadius.circular(
            AppRadius.borderRadius12,
          ),
        ),
      ),
    );
  }
}

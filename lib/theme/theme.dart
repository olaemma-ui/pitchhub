import 'package:flutter/material.dart';
import 'package:pitchub/core/style.dart';

class AppTheme {
  static theme() => ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.pink,
        textTheme: textTheme(),
        scaffoldBackgroundColor: ColorConstant.light,
      );

  static textTheme() => const TextTheme(
        titleLarge: TextStyle(
            fontFamily: 'Manrope',
            fontSize: 24,
            color: ColorConstant.black,
            fontWeight: FontWeight.w600),
        titleMedium: TextStyle(
            fontFamily: 'Manrope',
            fontSize: 20,
            color: ColorConstant.black,
            fontWeight: FontWeight.w600),
        labelSmall: TextStyle(
            fontFamily: 'Manrope',
            fontSize: 12,
            color: ColorConstant.black,
            fontWeight: FontWeight.w600),
        labelMedium: TextStyle(
            fontFamily: 'Manrope',
            fontSize: 14,
            color: ColorConstant.black,
            fontWeight: FontWeight.w600),
        labelLarge: TextStyle(
            fontFamily: 'Manrope',
            fontSize: 16,
            color: ColorConstant.black,
            fontWeight: FontWeight.w600),
      );
}

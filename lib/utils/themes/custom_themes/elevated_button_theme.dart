import 'package:flutter/material.dart';
import 'package:interneepk/utils/constants/colors.dart';

class NElevatedButtonTheme{
  NElevatedButtonTheme._();
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: NColors.primary,
      shape: const StadiumBorder(),
      maximumSize: const Size(double.infinity, 48),
      minimumSize: const Size(double.infinity, 48),
    )
  );
}
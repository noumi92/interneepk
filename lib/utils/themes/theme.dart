import 'package:flutter/material.dart';
import 'package:interneepk/utils/constants/colors.dart';
import 'package:interneepk/utils/themes/custom_themes/elevated_button_theme.dart';
import 'package:interneepk/utils/themes/custom_themes/text_field_theme.dart';
import 'package:interneepk/utils/themes/custom_themes/text_theme.dart';

class NAppTheme{
  NAppTheme._();
  static ThemeData lightTheme = ThemeData(
    primaryColor: NColors.primary,
    scaffoldBackgroundColor: Colors.white,
    elevatedButtonTheme: NElevatedButtonTheme.lightElevatedButtonTheme,
    inputDecorationTheme: NTextFieldTheme.lightInputDecorationTheme,
    textTheme: NTextTheme.lightTextTheme
  );
}
import 'package:flutter/material.dart';
import 'package:interneepk/utils/constants/colors.dart';
import 'package:interneepk/utils/constants/sizes.dart';

class NTextFieldTheme{
  NTextFieldTheme._();
  static InputDecorationTheme lightInputDecorationTheme = const InputDecorationTheme(
    filled: true,
    fillColor: NColors.primaryLight,
    iconColor: NColors.primary,
    prefixIconColor: NColors.primary,
    contentPadding: EdgeInsets.symmetric(
      horizontal: NSizes.defaultPadding,
      vertical: NSizes.defaultPadding
    ),
    border: OutlineInputBorder(
      borderRadius: BorderRadius.all(Radius.circular(30)),
      borderSide: BorderSide.none
    )
  );
}
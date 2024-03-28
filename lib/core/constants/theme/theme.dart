import 'package:chathubs/core/constants/colors.dart';
import 'package:chathubs/core/constants/theme/custom/app.bar.dart';
import 'package:chathubs/core/constants/theme/custom/bottom.sheet.dart';
import 'package:chathubs/core/constants/theme/custom/checkbox.dart';
import 'package:chathubs/core/constants/theme/custom/chip.dart';
import 'package:chathubs/core/constants/theme/custom/elevated.button.dart';
import 'package:chathubs/core/constants/theme/custom/outlined.button.dart';
import 'package:chathubs/core/constants/theme/custom/text.field.dart';
import 'package:chathubs/core/constants/theme/custom/text.theme.dart';
import 'package:flutter/material.dart';

class ChathubsAppTheme {
  const ChathubsAppTheme._();

  // Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    textTheme: ChathubsTextTheme.lightTextTheme,
    chipTheme: ChathubsChipTheme.lightChipTheme,
    scaffoldBackgroundColor: ChathubsColors.white,
    appBarTheme: ChathubsAppBarTheme.lightAppBarTheme,
    checkboxTheme: ChathubsCheckboxTheme.lightCheckboxTheme,
    bottomSheetTheme: ChathubsBottomSheetTheme.lightBottomSheetTheme,
    elevatedButtonTheme: ChathubsElevatedButtonTheme.lightElevatedButtonTheme,
    outlinedButtonTheme: ChathubsOutlinedButtonTheme.lightOutlinedButtonTheme,
    inputDecorationTheme: ChathubsTextFieldTheme.lightInputDecorationTheme,
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    textTheme: ChathubsTextTheme.darkTextTheme,
    chipTheme: ChathubsChipTheme.darkChipTheme,
    scaffoldBackgroundColor: ChathubsColors.dark,
    appBarTheme: ChathubsAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: ChathubsBottomSheetTheme.darkBottomSheetTheme,
    checkboxTheme: ChathubsCheckboxTheme.darkCheckboxTheme,
    elevatedButtonTheme: ChathubsElevatedButtonTheme.darkElevatedButtonTheme,
    outlinedButtonTheme: ChathubsOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: ChathubsTextFieldTheme.darkInputDecorationTheme,
  );
}

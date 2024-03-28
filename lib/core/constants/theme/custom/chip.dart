import 'package:chathubs/core/constants/colors.dart';
import 'package:flutter/material.dart';

class ChathubsChipTheme {
  ChathubsChipTheme._();

  static ChipThemeData lightChipTheme = ChipThemeData(
    disabledColor: ChathubsColors.grey.withOpacity(0.4),
    labelStyle: const TextStyle(color: ChathubsColors.black),
    selectedColor: ChathubsColors.black,
    padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: ChathubsColors.white,
  );

  static ChipThemeData darkChipTheme = const ChipThemeData(
    disabledColor: ChathubsColors.darkerGrey,
    labelStyle: TextStyle(color: ChathubsColors.white),
    selectedColor: ChathubsColors.black,
    padding: EdgeInsets.symmetric(horizontal: 12.0, vertical: 12.0),
    checkmarkColor: ChathubsColors.white,
  );
}

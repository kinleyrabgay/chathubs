import 'package:chathubs/core/constants/colors.dart';
import 'package:flutter/material.dart';

class ChathubsTextFieldTheme {
  ChathubsTextFieldTheme._();

  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: ChathubsColors.grey,
    suffixIconColor: ChathubsColors.darkGrey,
    // constraints: const BoxConstraints.expand(height: 200),
    labelStyle:
        const TextStyle().copyWith(fontSize: 14, color: ChathubsColors.grey),
    hintStyle:
        const TextStyle().copyWith(fontSize: 14, color: ChathubsColors.grey),
    errorStyle:
        const TextStyle().copyWith(fontSize: 12, fontStyle: FontStyle.normal),
    contentPadding:
        const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12.0),
    floatingLabelStyle: const TextStyle().copyWith(
      color: Colors.black.withOpacity(0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      // borderRadius: BorderRadius.circular(14),
      borderRadius: BorderRadius.zero,
      borderSide: const BorderSide(width: 1, color: ChathubsColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      // borderRadius: BorderRadius.circular(14),
      borderRadius: BorderRadius.zero,
      borderSide: const BorderSide(width: 1, color: ChathubsColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      // borderRadius: BorderRadius.circular(14),
      borderRadius: BorderRadius.zero,
      borderSide: const BorderSide(width: 1, color: Colors.black12),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      // borderRadius: BorderRadius.circular(14),
      borderRadius: BorderRadius.zero,
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      // borderRadius: BorderRadius.circular(14),
      borderRadius: BorderRadius.zero,
      borderSide: const BorderSide(width: 1, color: Colors.orange),
    ),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 3,
    prefixIconColor: ChathubsColors.grey,
    suffixIconColor: ChathubsColors.grey,
    // constraints: const BoxConstraints.expand(height: 14)
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    hintStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.white),
    errorStyle:
        const TextStyle().copyWith(fontSize: 12, fontStyle: FontStyle.normal),
    contentPadding:
        const EdgeInsets.symmetric(vertical: 18.0, horizontal: 12.0),
    floatingLabelStyle: const TextStyle().copyWith(
      color: Colors.white.withOpacity(0.8),
    ),
    border: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: ChathubsColors.grey),
    ),
    enabledBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: ChathubsColors.grey),
    ),
    focusedBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.white),
    ),
    errorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.red),
    ),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
      borderRadius: BorderRadius.circular(14),
      borderSide: const BorderSide(width: 1, color: Colors.orange),
    ),
  );
}

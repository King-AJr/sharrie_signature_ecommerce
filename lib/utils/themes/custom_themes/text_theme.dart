import 'package:flutter/material.dart';
import 'package:sharrie_signature_ecommerce/utils/constants/colors.dart';

class MyTextTheme {
  MyTextTheme._();

  static TextTheme myText = TextTheme(
    headlineLarge: const TextStyle().copyWith(
      fontSize: 24,
      fontFamily: "poppins-semibold",
      color: MyColors.baseBlack,
    ),
    headlineMedium: const TextStyle().copyWith(
      fontSize: 14,
      fontFamily: "poppins-regular",
      color: MyColors.grey800,
    ),
    titleLarge: const TextStyle().copyWith(
      fontSize: 24,
      fontFamily: "Redressed",
      color: MyColors.appGreen,
    ),
    titleMedium: const TextStyle().copyWith(
      fontSize: 16,
      fontFamily: "poppins-regular",
      color: MyColors.baseBlack,
    ),
    titleSmall: const TextStyle().copyWith(
      fontSize: 16,
      fontFamily: "poppins-light",
      color: MyColors.baseBlack,
    ),
    bodyLarge: const TextStyle().copyWith(
      fontSize: 18,
      fontFamily: "lora-semibold",
      color: MyColors.neutral800,
    ),
    bodyMedium: const TextStyle().copyWith(
      fontSize: 14,
      fontFamily: "inter-medium",
      color: MyColors.neutral600,
    ),
    bodySmall: const TextStyle().copyWith(
      fontSize: 12,
      fontFamily: "poppins-regular",
      color: MyColors.neutral600,
    ),
    labelMedium: const TextStyle().copyWith(
      fontSize: 10,
      fontFamily: "poppins-regular",
      color: MyColors.neutral600,
    ),
    labelLarge: const TextStyle().copyWith(
      fontSize: 14,
      fontFamily: "poppins-semibold",
      color: MyColors.neutral800,
    ),
    labelSmall: const TextStyle().copyWith(
      fontSize: 7.1,
      fontFamily: "poppins-regular",
      color: MyColors.appGreen,
    ),
  );
}

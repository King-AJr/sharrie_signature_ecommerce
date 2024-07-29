import 'package:flutter/material.dart';
import 'package:sharrie_signature_ecommerce/utils/constants/colors.dart';

class MyElevatedButtonTheme {
  MyElevatedButtonTheme._();

  static final myElevatedButton = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      backgroundColor: MyColors.primaryBackground,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: const BorderSide(
          color: MyColors.appGreen,
          width: 1,
        ),
      ),
      padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 24),
      textStyle: const TextStyle(
        fontSize: 7.1,
        fontFamily: "poppins-regular",
        color: MyColors.appGreen,
      ),
    ),
  );
}

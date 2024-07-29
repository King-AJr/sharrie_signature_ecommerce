import 'package:flutter/material.dart';
import 'package:sharrie_signature_ecommerce/utils/constants/colors.dart';
import 'package:sharrie_signature_ecommerce/utils/themes/custom_themes/elevated_button_themes.dart';
import 'package:sharrie_signature_ecommerce/utils/themes/custom_themes/text_theme.dart';

class MyAppTheme {
  MyAppTheme._();

  static final ThemeData myTheme = ThemeData(
      useMaterial3: true,
      primaryColor: MyColors.primaryBackground,
      brightness: Brightness.light,
      scaffoldBackgroundColor: MyColors.primaryBackground,
      textTheme: MyTextTheme.myText);
}

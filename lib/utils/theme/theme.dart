import 'package:flutter/material.dart';
import 'package:new_app_flutter/utils/theme/custom_themes/appbar_theme.dart';
import 'package:new_app_flutter/utils/theme/custom_themes/bottom_sheet_theme.dart';
import 'package:new_app_flutter/utils/theme/custom_themes/checkbox_theme.dart';
import 'package:new_app_flutter/utils/theme/custom_themes/chip_theme.dart';
import 'package:new_app_flutter/utils/theme/custom_themes/elevated_btn_theme.dart';
import 'package:new_app_flutter/utils/theme/custom_themes/outlined_btn_theme.dart';
import 'package:new_app_flutter/utils/theme/custom_themes/text_field_theme.dart';
import 'package:new_app_flutter/utils/theme/custom_themes/text_theme.dart';

class MySokoAppTheme {
  MySokoAppTheme._();

// Light Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Color.fromARGB(255, 179, 33, 33),
    scaffoldBackgroundColor: Colors.white,
    textTheme: MySokoAppTexttheme.lightTextTheme,
    chipTheme: MySokoChipTheme.lightChipTheme,
    appBarTheme: MySokoAppBartheme.lightAppBarTheme,
    checkboxTheme: MySokoCheckBoxTheme.lightCheckBoxTheme,
    bottomSheetTheme: MysokoappBottomSheet.lightBottomsheetTheme,
    outlinedButtonTheme: MySokoOutlinedButtonTheme.lightOutlinedButtontheme,
    inputDecorationTheme: MySokoTextFromFieldTheme.lightInputDecorationTheme,
    elevatedButtonTheme: MySokoAppelevatedbButtontheme.lightElevatedButtontheme,
  );

  // Dark Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Color.fromARGB(255, 179, 33, 33),
    scaffoldBackgroundColor: Colors.black,
    textTheme: MySokoAppTexttheme.darkTextTheme,
    chipTheme: MySokoChipTheme.darkChipTheme,
    appBarTheme: MySokoAppBartheme.darkAppBarTheme,
    checkboxTheme: MySokoCheckBoxTheme.darkCheckBoxTheme,
    bottomSheetTheme: MysokoappBottomSheet.darkBottomSheetTheme,
    outlinedButtonTheme: MySokoOutlinedButtonTheme.darkOutlinedButtonTheme,
    inputDecorationTheme: MySokoTextFromFieldTheme.darkInputDecorationTheme,
    elevatedButtonTheme: MySokoAppelevatedbButtontheme.darkElevatedButtontheme,
    );
}
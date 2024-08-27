import 'package:flutter/material.dart';
import 'package:social_app/core/contstants/my_colors.dart';
import 'package:social_app/core/theme/custom_theme/social_appbar_theme.dart';
import 'package:social_app/core/theme/custom_theme/social_elevated_button_theme.dart';
import 'package:social_app/core/theme/custom_theme/social_text_theme.dart';

class AppTheme {
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.white,
    textTheme: SocialTextTheme.textLightTheme,
    elevatedButtonTheme: SocialElevatedButtonTheme.elevatedButtonLightTheme,
    appBarTheme: SocialAppbarTheme.lightAppBarTheme,
  );

  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: "Poppins",
    brightness: Brightness.light,
    scaffoldBackgroundColor: Colors.black,
    textTheme: SocialTextTheme.textDarkTheme,
    elevatedButtonTheme: SocialElevatedButtonTheme.elevatedButtonDarkTheme,
    appBarTheme: SocialAppbarTheme.darkAppBarTheme,
  );
}

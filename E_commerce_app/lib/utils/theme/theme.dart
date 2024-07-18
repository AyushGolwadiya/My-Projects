import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/theme/custom_theme/text_theme.dart';

class EAppTheme{
  // Private Constructor
  EAppTheme._();

  // Light Mode Theme
  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.white,
    textTheme:ETextTheme.lightTextTheme,
    elevatedButtonTheme: const ElevatedButtonThemeData(

    ),
  );

  // Dark Mode Theme
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: Colors.blue,
    scaffoldBackgroundColor: Colors.black,
    textTheme: ETextTheme.darkTextTheme,
  );
}
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class EElevatedButtonTheme {
  EElevatedButtonTheme._();

  // Light elevated button theme
  static final lightElevatedButtonTheme =  ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: EColors.white,
      backgroundColor: EColors.blue,
      disabledBackgroundColor: EColors.grey,
      disabledForegroundColor: EColors.grey,
      side: BorderSide(color: EColors.blue),
      padding: const EdgeInsets.symmetric(vertical: 18),
      textStyle: const TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
    )
  );

  // dark elevatedButton Theme
  static final darkElevatedButtonTheme =  ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        foregroundColor: EColors.white,
        backgroundColor: EColors.blue,
        disabledBackgroundColor: EColors.grey,
        disabledForegroundColor: EColors.grey,
        side: BorderSide(color: EColors.blue),
        padding: const EdgeInsets.symmetric(vertical: 18),
        textStyle: const TextStyle(fontSize: 16,color: Colors.white,fontWeight: FontWeight.w600),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      )
  );
}
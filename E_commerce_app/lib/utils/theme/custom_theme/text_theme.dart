import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';
class ETextTheme {
  ETextTheme._();

  static TextTheme lightTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0 ,fontWeight: FontWeight.bold,color: EColors.black),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0,fontWeight: FontWeight.w600,color: EColors.black),
    headlineSmall:const TextStyle().copyWith(fontSize: 18.0,fontWeight: FontWeight.w600,color: EColors.black),

    titleLarge: const  TextStyle().copyWith(fontSize:16.0,fontWeight: FontWeight.w600,color:EColors.black),
    titleMedium: const TextStyle().copyWith(fontSize:16.0,fontWeight: FontWeight.w500,color:EColors.black),
    titleSmall:const TextStyle().copyWith(fontSize:16.0,fontWeight: FontWeight.w400,color:EColors.black),

    bodyLarge: const TextStyle().copyWith(fontSize:14.0,fontWeight: FontWeight.w500,color:EColors.black),
    bodyMedium:const TextStyle().copyWith(fontSize:14.0,fontWeight: FontWeight.normal,color:EColors.black),
    bodySmall: const TextStyle().copyWith(fontSize:14.0,fontWeight: FontWeight.w500,color:EColors.black),

    labelLarge: const TextStyle().copyWith(fontSize: 12.0,fontWeight: FontWeight.normal,color: EColors.black),
    labelMedium: const TextStyle().copyWith(fontSize: 12.0,fontWeight: FontWeight.normal,color: EColors.black.withOpacity(0.5)),
  );

  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle().copyWith(fontSize: 32.0 ,fontWeight: FontWeight.bold,color: EColors.white),
    headlineMedium: const TextStyle().copyWith(fontSize: 24.0,fontWeight: FontWeight.w600,color: EColors.white),
    headlineSmall:const TextStyle().copyWith(fontSize: 18.0,fontWeight: FontWeight.w600,color: EColors.white),

    titleLarge: const  TextStyle().copyWith(fontSize:16.0,fontWeight: FontWeight.w600,color:EColors.white),
    titleMedium: const TextStyle().copyWith(fontSize:16.0,fontWeight: FontWeight.w500,color:EColors.white),
    titleSmall:const TextStyle().copyWith(fontSize:16.0,fontWeight: FontWeight.w400,color:EColors.white),

    bodyLarge: const TextStyle().copyWith(fontSize:14.0,fontWeight: FontWeight.w500,color:EColors.white),
    bodyMedium:const TextStyle().copyWith(fontSize:14.0,fontWeight: FontWeight.normal,color:EColors.white),
    bodySmall: const TextStyle().copyWith(fontSize:14.0,fontWeight: FontWeight.w500,color:EColors.white),

    labelLarge: const TextStyle().copyWith(fontSize: 12.0,fontWeight: FontWeight.normal,color: EColors.white),
    labelMedium: const TextStyle().copyWith(fontSize: 12.0,fontWeight: FontWeight.normal,color: EColors.white.withOpacity(0.5)),
  );
}
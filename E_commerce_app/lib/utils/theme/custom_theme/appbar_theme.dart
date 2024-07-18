import 'package:flutter/material.dart';
import 'package:e_commerce_app/utils/constants/colors.dart';

class EAppBarTheme {
  EAppBarTheme._();

  static AppBarTheme lightAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: EColors.transparent,
    surfaceTintColor: EColors.transparent,
    iconTheme: IconThemeData(color: EColors.black,size: 24),
    actionsIconTheme: IconThemeData(color: EColors.black,size: 24),
    titleTextStyle: TextStyle(fontSize:18.0,fontWeight: FontWeight.w600,color: EColors.black),
  );

  static AppBarTheme darkAppBarTheme = AppBarTheme(
    elevation: 0,
    centerTitle: false,
    scrolledUnderElevation: 0,
    backgroundColor: EColors.transparent,
    surfaceTintColor: EColors.transparent,
    iconTheme: IconThemeData(color: EColors.black,size: 24),
    actionsIconTheme: IconThemeData(color: EColors.white,size: 24),
    titleTextStyle: TextStyle(fontSize:18.0,fontWeight: FontWeight.w600,color: EColors.white),
  );

}
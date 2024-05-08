
import 'dart:ui';
import 'package:flutter/material.dart';

TextStyle myStyle({Color textColor = Colors.indigo , FontWeight  fontWeight = FontWeight.normal}){
  return TextStyle(
    fontSize: 100,
    fontWeight: fontWeight,
    fontStyle: FontStyle.italic ,
    color: textColor,
  ) ;
}
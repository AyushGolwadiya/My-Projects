
import 'package:e_commerce_app/utils/constants/colors.dart';
import 'package:flutter/material.dart';

class EBottomSheetThemeData {
  static BottomSheetThemeData lightBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: EColors.white,
    modalBackgroundColor: EColors.white,
    constraints:  const BoxConstraints(minWidth:double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );

  static BottomSheetThemeData darkBottomSheetTheme = BottomSheetThemeData(
    showDragHandle: true,
    backgroundColor: EColors.black,
    modalBackgroundColor: EColors.black,
    constraints: const BoxConstraints(minWidth: double.infinity),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
  );
}
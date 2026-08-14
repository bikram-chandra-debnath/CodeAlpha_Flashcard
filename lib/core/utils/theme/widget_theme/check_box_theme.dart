import 'package:flashcard/core/utils/constants/colors.dart';
import 'package:flashcard/core/utils/constants/size.dart';
import 'package:flutter/material.dart';

class AppCheckBoxTheme {

AppCheckBoxTheme._();


static CheckboxThemeData lightCheckBoxTheme = CheckboxThemeData(

  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(AppSizes.xs)
  ),
  checkColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains( WidgetState.selected)){
      return AppColors.white;
    }
    else {
      return AppColors.black;
    }
  },),

  fillColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.selected)){
      return AppColors.primary;
    }
    else{
      return Colors.transparent;
    }
  },)

);
static CheckboxThemeData darkCheckBoxTheme = CheckboxThemeData(

  shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(AppSizes.xs)
  ),
  checkColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains( WidgetState.selected)){
      return AppColors.white;
    }
    else {
      return AppColors.black;
    }
  },),

  fillColor: WidgetStateProperty.resolveWith((states) {
    if (states.contains(WidgetState.selected)){
      return AppColors.primary;
    }
    else{
      return Colors.transparent;
    }
  },)

);


}
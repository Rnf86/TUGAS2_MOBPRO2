import 'package:flutter/material.dart';

class AppColors{
  static const darkGrey = Color(0XFF635C5C);
  static const darkBlue = Color(0XFF4F2CB5);
}

class TextStyles {
  static TextStyle title = const TextStyle(
    fontFamily: 'TimesNewRomance',
    fontWeight: FontWeight.bold,
    fontSize: 32.0,
    color: AppColors.darkGrey
  );
  static TextStyle body = const TextStyle(
      fontFamily: 'TimesNewRomance',
      fontWeight: FontWeight.normal,
      fontSize: 18.0,
      color: AppColors.darkGrey,
  );
}
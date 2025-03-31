import 'package:flutter/material.dart';

@immutable
class AppColors {
  //? Blues
  static const Color darkBlue = Color(0xFF0A0B39); // dark blue
  static const Color lightBlue = Color(0xFF1D85E4);
  static const Color accentBlue = Color(0xFF23224A);

  static const Color grey = Color(0xFFB7B6C4);
  static const Color blueGrey = Color(0xFF0A0B39);
  static const Color white = Color(0xFFFFFFFF);

  //! Blacks
  static const Color black = Color(0xFF000000);
  static const Color secondaryBlack = Color(0xFF060620);

  static const Color darkerGrey = Color(0xFF4F4F4F);
  static const Color darkGrey = Color(0xFF939393);


  static final gradientColorList = [
    AppColors.black,
    AppColors.secondaryBlack,
    AppColors.secondaryBlack.withOpacity(.99),
    AppColors.secondaryBlack.withOpacity(.98),
    AppColors.secondaryBlack.withOpacity(.97),
    AppColors.secondaryBlack.withOpacity(.96),
    AppColors.secondaryBlack.withOpacity(.95),
    AppColors.secondaryBlack.withOpacity(.94),
    AppColors.secondaryBlack.withOpacity(.93),
    AppColors.secondaryBlack.withOpacity(.92),
    AppColors.secondaryBlack.withOpacity(.91),
    AppColors.secondaryBlack.withOpacity(.90),
    AppColors.darkBlue,
    AppColors.accentBlue,
    // AppColors.lightBlue,
    AppColors.blueGrey,

  ];


  //Processing
  static Color error = Color(0xffbb2124);
  static Color successful = Color(0xff22bb33);
  static Color info = Color(0xff5bc0de);
  static Color warning = Color(0xffF0ad4e);
  static Color bug = Color(0xffAAAAAA);

}


import 'package:flutter/material.dart';

import 'app_colors.dart';
import 'app_fonts.dart';

class Themeapp{
  static final LightTheme = ThemeData(
    fontFamily: AppFonts.mainfontname,
    primaryColor: AppColor.primerycolor,
    secondaryHeaderColor: AppColor.Scandcolor,
    buttonTheme: ButtonThemeData(
      buttonColor: AppColor.bluecolor,
    ),

  );


}
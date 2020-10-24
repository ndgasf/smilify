import 'package:flutter/material.dart';

/* Font Sizes */
const double FONT_SIZE_SMALL = 12.0;
const double FONT_SIZE_MEDIUM = 14.0;
const double FONT_SIZE_LARGE = 16.0;
const double FONT_SIZE__EXTRA_LARGE = 18.0;

/* Colors */
const Color primaryColor = Color(0XFF5959fc);
const Color primaryColorLight = Color(0XFFF2ECFD);
const Color primaryColorDark = Color(0XFF7900F5);

const Color textColor = Color(0XFF212121);
const Color textColorSec = Color(0XFF747474);

const Color viewColor = Color(0XFFDADADA);

const app_background = Color(0XFFf8f8f8);

const sign_in_background = Color(0XFFDADADA);
const icon_color = Color(0XFF747474);
const selected_tab = Color(0XFFFCE9E9);
const red = Color(0XFFF10202);
const blue = Color(0XFF1D36C0);
const edit_text_background = Color(0XFFE8E8E8);
const shadow = Color(0X70E2E2E5);
var white = materialColor(0XFFFFFFFF);
var textColorPrimary = materialColor(0XFF212121);
const shadow_color = Color(0X95E9EBF0);
const color_primary_light = Color(0XFFFCE8E8);
const bg_bottom_sheet = Color(0XFFFFF1F1);

Map<int, Color> color = {
  50: Color.fromRGBO(136, 14, 79, .1),
  100: Color.fromRGBO(136, 14, 79, .2),
  200: Color.fromRGBO(136, 14, 79, .3),
  300: Color.fromRGBO(136, 14, 79, .4),
  400: Color.fromRGBO(136, 14, 79, .5),
  500: Color.fromRGBO(136, 14, 79, .6),
  600: Color.fromRGBO(136, 14, 79, .7),
  700: Color.fromRGBO(136, 14, 79, .8),
  800: Color.fromRGBO(136, 14, 79, .9),
  900: Color.fromRGBO(136, 14, 79, 1),
};

MaterialColor materialColor(colorHax) {
  return MaterialColor(colorHax, color);
}

MaterialColor colorCustom = MaterialColor(0XFF5959fc, color);

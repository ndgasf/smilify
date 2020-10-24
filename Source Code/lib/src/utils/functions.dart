import 'package:Smilify/src/utils/utils.dart';
import 'package:flutter/material.dart';

Widget addVerticalSpacing(double radius) {
  return SizedBox(
    height: radius,
  );
}

Widget addHorizontalSpacing(double radius) {
  return SizedBox(
    width: radius,
  );
}

Widget divider() {
  return Divider(color: viewColor, height: 1);
}

Widget text(String text,
    {var fontSize = 14.0,
    textColor = Colors.black,
    var fontFamily = "Regular",
    var isCentered = false,
    var maxLine = 1,
    var latterSpacing = 0.25,
    var textAllCaps = false,
    var isLongText = false}) {
  return Text(textAllCaps ? text.toUpperCase() : text,
      textAlign: isCentered ? TextAlign.center : TextAlign.start,
      maxLines: isLongText ? null : maxLine,
      style: TextStyle(
          fontFamily: fontFamily,
          fontSize: fontSize,
          color: textColor,
          height: 1.5,
          letterSpacing: latterSpacing));
}

import 'package:Smilify/src/utils/utils.dart';
import 'package:flutter/material.dart';

extension MyText on String {
  makeText({Color color, double fontSize, FontWeight fontWeight}) {
    return Text(
      this,
      style: TextStyle(
        color: color ?? Colors.black,
        fontSize: fontSize ?? FONT_SIZE_MEDIUM,
        fontWeight: fontWeight ?? FontWeight.normal,
      ),
    );
  }
}

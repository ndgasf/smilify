import 'package:flutter/material.dart';

/// Resposniveness
double width(BuildContext context) => MediaQuery.of(context).size.width;

double height(BuildContext context) => MediaQuery.of(context).size.height;

BorderRadius br(double radius) => BorderRadius.circular(radius);

RoundedRectangleBorder rounded(double circluar) =>
    RoundedRectangleBorder(borderRadius: br(circluar));

/// Colors
const Color kPrimaryColor = Color.fromRGBO(70, 180, 210, 1);
final iconColor = Colors.grey.shade800;
const backgroundColor = Color(0xfff3f4f8);

final List<Color> kBackgroundColorsList = <Color>[
  Colors.blue[200],
  Colors.teal[200],
  Colors.orange[200],
  Colors.amber[200],
  Colors.blueAccent[200],
  Colors.tealAccent[200],
  Colors.cyan[200],
  Colors.purpleAccent[200],
  Colors.pink[200]
];

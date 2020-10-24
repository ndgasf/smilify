import 'package:Smilify/src/widgets/display_list.dart';
import 'package:flutter/material.dart';

class Mentors extends StatelessWidget {
  final String data;
  const Mentors({Key key, this.data}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DisplayList(title: data);
  }
}

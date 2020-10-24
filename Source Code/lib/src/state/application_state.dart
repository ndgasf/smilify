import 'package:Smilify/src/screens/government_firm.dart';
import 'package:Smilify/src/screens/helpline.dart';
import 'package:Smilify/src/screens/learn_aware.dart';
import 'package:Smilify/src/screens/mentors.dart';
import 'package:Smilify/src/screens/professionals.dart';
import 'package:Smilify/src/screens/youth_table.dart';
import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class ApplicationState extends ChangeNotifier {
  String title = 'Mentors';
  int index = 0;

  List<Widget> dataWidgets = [
    Mentors(data: "Mentors"),
    Professionals(),
    Helpline(),
    LearnAware(),
    YouthTable(),
    GovernmentFirm()
  ];

  setTitle(String val, int index) {
    title = val;
    this.index = index;
    notifyListeners();
  }
}

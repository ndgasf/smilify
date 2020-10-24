import 'package:Smilify/src/state/application_state.dart';
import 'package:Smilify/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  int isSelected = 1;

  Widget tabItem(var pos, var icon, var title) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = pos;
        });
        Provider.of<ApplicationState>(context, listen: false)
            .setTitle(title, pos - 1);
      },
      child: Container(
        width: MediaQuery.of(context).size.width * 0.25,
        height: MediaQuery.of(context).size.width * 0.13,
        alignment: Alignment.center,
        child: Column(
          children: <Widget>[
            Icon(
              icon,
              color: isSelected == pos ? primaryColor : icon_color,
            ),
            Text(
              title,
              style: TextStyle(
                color: isSelected == pos ? primaryColor : icon_color,
                fontWeight:
                    isSelected == pos ? FontWeight.w800 : FontWeight.normal,
                fontSize: 12.0,
              ),
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Consumer<ApplicationState>(
      builder: (context, value, child) => Scaffold(
        appBar: AppBar(
          title: Text(
            value.title,
            style: TextStyle(color: Colors.white),
          ),
          centerTitle: true,
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Icon(Icons.settings),
            )
          ],
        ),
        body: value.dataWidgets[value.index],
        backgroundColor: app_background,
        bottomNavigationBar: Container(
          padding: EdgeInsets.symmetric(vertical: 16.0),
          decoration: BoxDecoration(
            color: Colors.white,
            border: Border.all(color: viewColor),
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20), topRight: Radius.circular(20)),
            boxShadow: [
              BoxShadow(
                color: shadow_color,
                blurRadius: 10,
                spreadRadius: 2,
                offset: Offset(0, 3.0),
              ),
            ],
          ),
          child: Wrap(
            alignment: WrapAlignment.center,
            spacing: 30.0,
            children: <Widget>[
              tabItem(1, Icons.supervised_user_circle, "Mentors"),
              tabItem(2, Icons.verified_user, "Professionals"),
              tabItem(3, Icons.live_help_outlined, "Suicide Helpline"),
              tabItem(4, Icons.timelapse, "Learn & Aware"),
              tabItem(5, Icons.group, "Youth Table Talk Groups"),
              tabItem(6, Icons.verified_outlined,
                  "Govermental & Non Govermentals Firms"),
            ],
          ),
        ),
      ),
    );
  }
}

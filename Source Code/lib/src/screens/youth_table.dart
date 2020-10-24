import 'package:Smilify/src/utils/utils.dart';
import 'package:flutter/material.dart';

class YouthTable extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(flex: 2, child: Image.asset("assets/team.png")),
          Expanded(
            child: Column(
              children: [
                _helplineCard(context, "join a group".toUpperCase()),
                SizedBox(height: 20.0),
                _helplineCard(context, "invite friends".toUpperCase())
              ],
            ),
          )
        ],
      ),
    );
  }

  _helplineCard(BuildContext context, String text) {
    return Card(
      color: primaryColor,
      elevation: 8.0,
      child: Container(
        width: MediaQuery.of(context).size.width * 0.80,
        height: 50,
        padding: EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.0),
          gradient: LinearGradient(
            colors: [primaryColor, primaryColor.withOpacity(0.9)],
          ),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

import 'package:Smilify/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Helpline extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        children: [
          Expanded(flex: 2, child: Image.asset("assets/help.png")),
          Expanded(
            child: Column(
              children: [
                _helplineCard(context, "Through Direct call", () async {
                  if (await canLaunch("tel:123456789")) {
                    launch("tel:123456789");
                  }
                }),
                SizedBox(height: 20.0),
                _helplineCard(context, "Through Message Sessions", () async {
                  if (await canLaunch("sms:123456789")) {
                    launch("sms:123456789");
                  }
                })
              ],
            ),
          )
        ],
      ),
    );
  }

  _helplineCard(BuildContext context, String text, Function onTap) {
    return InkWell(
      onTap: onTap,
      child: Card(
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
      ),
    );
  }
}

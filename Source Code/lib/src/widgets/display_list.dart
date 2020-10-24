import 'package:Smilify/src/utils/utils.dart';
import 'package:flutter/material.dart';

class DisplayList extends StatelessWidget {
  final String title, asset;
  const DisplayList({this.title, this.asset});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 100,
      itemBuilder: (context, index) => ListTile(
        title: Text(
          '$title #$index',
          style: TextStyle(
            color: textColorPrimary,
            fontWeight: FontWeight.bold,
          ),
        ),
        subtitle: Text(
          'Description',
          style: TextStyle(color: textColorSec),
        ),
        leading: CircleAvatar(
          backgroundImage: AssetImage(asset ?? "assets/mentor.jpeg"),
        ),
        trailing: Container(
          padding: EdgeInsets.all(8.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: primaryColor,
          ),
          child: Text(
            "Contact Details",
            style: TextStyle(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}

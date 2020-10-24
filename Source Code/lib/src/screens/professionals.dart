import 'package:Smilify/src/screens/mentors.dart';
import 'package:Smilify/src/utils/route.dart';
import 'package:Smilify/src/utils/utils.dart';
import 'package:Smilify/src/widgets/display_list.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Professionals extends StatefulWidget {
  @override
  ProfessionalsState createState() => ProfessionalsState();
}

class ProfessionalsState extends State<Professionals> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10.0),
      child: GridView.count(
        mainAxisSpacing: 20.0,
        crossAxisCount: 2,
        padding: EdgeInsets.symmetric(horizontal: 10.0),
        crossAxisSpacing: 10.0,
        children: ["Lawyers", "Advocates", "Doctors", "Psychiatrists"]
            .map(
              (e) => InkWell(
                onTap: () => MyRoute.push(context, ProfessionalsList(data: e)),
                child: GridTile(
                  footer: Center(
                    child: Text(
                      e,
                      style: TextStyle(
                        color: textColorPrimary,
                        fontWeight: FontWeight.w500,
                        fontSize: 16.0,
                      ),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 18.0),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(20.0),
                      child: Image.asset(
                        'assets/$e.jpg',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                ),
              ),
            )
            .toList(),
      ),
    );
  }
}

class ProfessionalsList extends StatelessWidget {
  final String data;
  ProfessionalsList({this.data});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          data,
          style: TextStyle(color: Colors.white),
        ),
      ),
      body: DisplayList(
        title: data,
        asset: "assets/$data.jpg",
      ),
    );
  }
}

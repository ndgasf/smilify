import 'package:Smilify/src/utils/utils.dart';
import 'package:Smilify/src/widgets/MyButton.dart';
import 'package:flutter/material.dart';

class GovernmentFirm extends StatefulWidget {
  @override
  _GovernmentFirmState createState() => _GovernmentFirmState();
}

class _GovernmentFirmState extends State<GovernmentFirm>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(60),
          child: Column(
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width,
                height: 60,
                child: TabBar(
                  isScrollable: true,
                  indicatorColor: primaryColor,
                  indicatorWeight: 4.0,
                  tabs: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "NGOs",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: textColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Law Enforcing Agencies",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: textColor,
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Text(
                        "Cyber Crime",
                        style: TextStyle(
                          fontSize: 15.0,
                          color: textColor,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) => Card(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'NGO #$index',
                        style: TextStyle(
                          color: textColorPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      subtitle: Text(
                        'Description',
                        style: TextStyle(color: textColorSec),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/ngo.png"),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      "2427  Rosemont Avenue, Melbourne, Florida, 32901",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15.0),
                    MyButton(textContent: "Locate on Map", onPressed: () {})
                  ],
                ),
              ),
            ),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) => Card(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Law Enforcing Agency #$index',
                        style: TextStyle(
                          color: textColorPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      subtitle: Text(
                        'Description',
                        style: TextStyle(color: textColorSec),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/ngo.png"),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      "4313  Gateway Avenue, Bear Valley Springs, California, 93561",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15.0),
                    MyButton(textContent: "Locate on Map", onPressed: () {})
                  ],
                ),
              ),
            ),
            ListView.builder(
              itemCount: 20,
              itemBuilder: (context, index) => Card(
                margin: EdgeInsets.all(10.0),
                child: Column(
                  children: [
                    ListTile(
                      title: Text(
                        'Cyber Crime #$index',
                        style: TextStyle(
                          color: textColorPrimary,
                          fontWeight: FontWeight.bold,
                          fontSize: 16.0,
                        ),
                      ),
                      subtitle: Text(
                        'Description',
                        style: TextStyle(color: textColorSec),
                      ),
                      leading: CircleAvatar(
                        backgroundImage: AssetImage("assets/ngo.png"),
                      ),
                    ),
                    SizedBox(height: 5.0),
                    Text(
                      "4313  Gateway Avenue, Bear Valley Springs, California, 93561",
                      style: TextStyle(
                        color: Colors.blueGrey,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    SizedBox(height: 15.0),
                    MyButton(textContent: "Contact", onPressed: () {})
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

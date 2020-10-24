import 'package:Smilify/src/screens/home_page.dart';
import 'package:Smilify/src/utils/constants.dart';
import 'package:Smilify/src/utils/functions.dart';
import 'package:Smilify/src/utils/route.dart';
import 'package:Smilify/src/utils/utils.dart';
import 'package:Smilify/src/widgets/MyButton.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  LoginScreenState createState() => LoginScreenState();
}

class LoginScreenState extends State<LoginScreen>
    with SingleTickerProviderStateMixin {
  TabController tabController;
  final GlobalKey<FormState> registerKey = GlobalKey<FormState>();
  final GlobalKey<FormState> loginKey = GlobalKey<FormState>();

  String occupation = "";

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
      initialIndex: 1,
      length: 2,
      child: Scaffold(
        appBar: PreferredSize(
          preferredSize: Size.fromHeight(kToolbarHeight),
          child: Container(
            color: Colors.white,
            child: SafeArea(
              child: Column(
                children: <Widget>[
                  Spacer(),
                  Container(
                    width: MediaQuery.of(context).size.width * 0.60,
                    child: TabBar(
                      indicatorColor: primaryColor,
                      indicatorWeight: 4.0,
                      tabs: [
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Login",
                            style: TextStyle(
                              fontSize: 16.0,
                              color: textColor,
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Text(
                            "Register",
                            style: TextStyle(
                              fontSize: 16.0,
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
          ),
        ),
        body: TabBarView(
          children: <Widget>[
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(left: 16, right: 16),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        "Enter your login details to access your account",
                        style: TextStyle(
                          color: textColorSec,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Material(
                      elevation: 5.0,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: br(12.0)),
                      child: Container(
                        padding: EdgeInsets.symmetric(
                          horizontal: 25.0,
                          vertical: 20.0,
                        ),
                        child: Form(
                          key: loginKey,
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                validator: (val) => val.isEmpty
                                    ? "This field is required."
                                    : null,
                                decoration: InputDecoration(
                                  labelText: "Email Address / Phone Number",
                                  border: InputBorder.none,
                                ),
                              ),
                              Divider(color: viewColor, height: 1),
                              TextFormField(
                                validator: (val) => val.isEmpty
                                    ? "This field is required."
                                    : null,
                                decoration: InputDecoration(
                                  labelText: "Password",
                                  border: InputBorder.none,
                                ),
                                obscureText: true,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                    addVerticalSpacing(30.0),
                    MyButton(
                      onPressed: () {
                        if (loginKey.currentState.validate()) {
                          MyRoute.push(context, HomePage(), replaced: true);
                        }
                      },
                      textContent: "Login",
                    ),
                  ],
                ),
              ),
            ),
            SingleChildScrollView(
              child: Container(
                margin: EdgeInsets.only(right: 16, left: 16),
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.symmetric(vertical: 20.0),
                      child: Text(
                        "Register yourself!",
                        style: TextStyle(
                          color: textColorSec,
                          fontSize: 14.0,
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                    Material(
                      elevation: 5.0,
                      color: Colors.white,
                      shape: RoundedRectangleBorder(borderRadius: br(12.0)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(
                          horizontal: 25.0,
                          vertical: 20.0,
                        ),
                        child: Form(
                          key: registerKey,
                          child: Column(
                            children: <Widget>[
                              TextFormField(
                                validator: (val) => val.isEmpty
                                    ? "This field is required."
                                    : null,
                                decoration: InputDecoration(
                                  labelText: "Name",
                                  border: InputBorder.none,
                                ),
                              ),
                              divider(),
                              TextFormField(
                                validator: (val) => val.isEmpty
                                    ? "This field is required."
                                    : null,
                                decoration: InputDecoration(
                                  labelText: "Age",
                                  border: InputBorder.none,
                                ),
                                keyboardType: TextInputType.number,
                              ),
                              divider(),
                              TextFormField(
                                validator: (val) => val.isEmpty
                                    ? "This field is required."
                                    : null,
                                decoration: InputDecoration(
                                  labelText: "Email Address / Phone Number",
                                  border: InputBorder.none,
                                ),
                              ),
                              divider(),
                              TextFormField(
                                validator: (val) => val.isEmpty
                                    ? "This field is required."
                                    : null,
                                decoration: InputDecoration(
                                  labelText: "City",
                                  border: InputBorder.none,
                                ),
                              ),
                              divider(),
                              TextFormField(
                                validator: (val) => val.isEmpty
                                    ? "This field is required."
                                    : null,
                                decoration: InputDecoration(
                                  labelText: "Marital Status",
                                  border: InputBorder.none,
                                ),
                              ),
                              divider(),
                              DropdownButtonFormField(
                                validator: (val) => val == null || val.isEmpty
                                    ? "This field is required."
                                    : null,
                                items: ["Student", "Working Women", "Housewife"]
                                    .map((e) => DropdownMenuItem(
                                          child: Text(e),
                                          value: e,
                                        ))
                                    .toList(),
                                decoration:
                                    InputDecoration(hintText: "Occupation"),
                                onChanged: (val) {
                                  this.setState(() {
                                    occupation = val;
                                  });
                                },
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    addVerticalSpacing(30.0),
                    MyButton(
                      onPressed: () {
                        if (registerKey.currentState.validate()) {
                          MyRoute.push(context, HomePage(), replaced: true);
                        }
                      },
                      textContent: "Register",
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

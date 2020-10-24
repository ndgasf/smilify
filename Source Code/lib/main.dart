import 'package:Smilify/src/screens/login_screen.dart';
import 'package:Smilify/src/screens/splash_screen.dart';
import 'package:Smilify/src/state/application_state.dart';
import 'package:Smilify/src/utils/utils.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => ApplicationState(),
      builder: (context, child) => MaterialApp(
        title: "Smilify",
        theme: ThemeData(
          primaryColor: primaryColor,
          scaffoldBackgroundColor: Colors.white,
        ),
        home: SplashScreen(),
      ),
    );
  }
}

import 'package:flutter/material.dart';
import 'package:krupuk_inventory/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'My Inventory',
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        fontFamily: "Muli",
        textTheme: TextTheme(
          bodyText1: TextStyle(color: mTextColor),
          bodyText2: TextStyle(color: mTextColor),
        ),
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Splash,
    );
  }
}
 
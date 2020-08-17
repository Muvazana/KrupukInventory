import 'package:flutter/material.dart';
import 'package:krupuk_inventory/screen/splash/component/body.dart';
import 'package:krupuk_inventory/size_config.dart';

class SplashScreen extends StatelessWidget {
  static String routeName = "/Spllash"
  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      body: Body(),
    );
  }
}

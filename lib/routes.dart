import 'package:flutter/material.dart';
import 'package:krupuk_inventory/screen/login/login_screen.dart';
import 'package:krupuk_inventory/screen/splash/splash_screen.dart';

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  LoginScreen.routeName: (context) => LoginScreen(),
};
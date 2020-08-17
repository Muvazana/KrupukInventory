import 'package:flutter/material.dart';

class SizeConfig {
  static MediaQueryData _mediaQueryData;
  static double screenWidth;
  static double screenHeight;
  static double defaultSize;
  static Orientation orientation;

  void init(BuildContext context) {
    _mediaQueryData = MediaQuery.of(context);
    screenWidth = _mediaQueryData.size.width;
    screenHeight = _mediaQueryData.size.height;
    orientation = _mediaQueryData.orientation;
  }
}

// Get the Proportionate Height as per screen size
double getProportionScreenHeight(double inputHeiht) {
  double screenHeight = SizeConfig.screenHeight;
  //812 is the layout height that designer use
  return (inputHeiht / 812.0) * screenHeight;
}

// Get the Proportionate Width as per screen size
double getProportionScreenWidth(double inputHeiht) {
  double screenHeight = SizeConfig.screenHeight;
  //812 is the layout height that designer use
  return (inputHeiht / 812.0) * screenHeight;
}

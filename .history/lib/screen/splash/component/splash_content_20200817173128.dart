import 'package:flutter/material.dart';
import 'package:krupuk_inventory/constants.dart';

import '../../../size_config.dart';


class SplashContent extends StatelessWidget {
  const SplashContent({
    Key key,
    this.text,
    this.image,
  }) : super(key: key);
  final String text, image;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Spacer(),
        Text(
          "MY INVENTORY",
          style: TextStyle(
              fontSize: getProportionScreenWidth(36),
              color: mPrimaryColor,
              fontWeight: FontWeight.bold),
        ),
        Text(
          text,
          textAlign: TextAlign.center,
        ),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          image,
          height: getProportionScreenHeight(265),
          width: getProportionScreenWidth(235),
        )
      ],
    );
  }
}

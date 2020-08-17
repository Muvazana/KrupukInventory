import 'package:flutter/material.dart';
import 'package:krupuk_inventory/constants.dart';
import 'package:krupuk_inventory/size_config.dart';

class Body extends StatefulWidget {
  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Column(
          children: <Widget>[
            Expanded(flex: 3, child: SplashContent(image: "assets/images/splash_1.png",)),
            Expanded(flex: 2, child: SizedBox()),
          ],
        ),
      ),
    );
  }
}

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
        Text("The Best Inventory for Our Product"),
        Spacer(
          flex: 2,
        ),
        Image.asset(
          "assets/images/splash_1.png",
          height: getProportionScreenHeight(265),
          width: getProportionScreenWidth(235),
        )
      ],
    );
  }
}
